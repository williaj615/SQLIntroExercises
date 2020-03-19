--Exercise 1
SELECT * FROM Genre
--Exercise 2
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Neck Deep', '2002');
----Exercise 3
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId) VALUES ('The Peace and The Panic', '2017', '360', 'MyRecords', '31');
--Exercise 4
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Motion Sickness', '420', '25', '07/2017', '31')
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Happy Judgement Day', '120', '25', '08/2017', '31')
INSERT INTO Song (Title, SongLength, AlbumId, ReleaseDate, ArtistId) VALUES ('Parachute', '630', '25', '09/2017', '31')

--Practicing Update Function
UPDATE Song SET GenreId = '9' WHERE ArtistId = '31'
UPDATE Album SET AlbumLength = '1400' WHERE Title = 'The Peace and The Panic'
UPDATE Album SET GenreId = '9' WHERE Title = 'The Peace and The Panic'

--Exercise 5

--Exercise 6
SELECT AlbumId, COUNT(*) AS SongsPerAlbum FROM Song GROUP BY AlbumId

--Exercise 7
SELECT ArtistId, COUNT(*) AS SongsPerArtist FROM Song GROUP BY ArtistId

--Exercise 8
SELECT GenreId, COUNT(*) AS SongsPerGenre FROM Song GROUP BY GenreId

--Exercise 9
SELECT Title, AlbumLength FROM Album WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)

--Exercise 10
SELECT Title, SongLength FROM Song WHERE SongLength = (SELECT MAX(SongLength) FROM Song)

--Exercise 11
