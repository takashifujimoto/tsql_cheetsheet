use shops
GO

-- SHOW the list of tables in the database
select * from sys.tables

-- example w/o primary key.         this will be dropped later.
create table shops(
    id char(5) NOT Null,
    name varchar(50),
    rating int,

    prefecture varchar(50),
    constraint pk_shops primary key (id)
);


insert into shops ( name, rating, prefecture) values ('maru batsu shoten', 3, 'hokkaido')


-- I want the id to be auto increment,  (like sadid earlier)
-- Let's drop it and recreate it
drop table shops
select * from sys.tables

-- make id auto increment
create table shops(
    id int IDENtity(1,1) PRIMARY key,
    name varchar(50),
    rating INT,
    prefecture varchar(50),
);


INSERT into shops(name, rating, prefecture) values ( 'abc shoten', 3, 'Hokkaido');
Insert into shops(name, rating, prefecture) values ('sankaku shoten' , 5, 'Aomori');
Insert into shops(name, rating, prefecture) values ('batsu batu shoten', 4, 'Iwate');
INSERT into shops(name, rating, prefecture) VALUEs ('shikaku shikaku shoten', 5, 'Miyagi');
insert into shops(name, rating, prefecture) values ( 'a shoten', 5, 'Akita')
insert into shops(name, rating, prefecture) values ('b store', 4, 'yamagata')
insert into shops(name, rating, prefecture) values ('c shoten', 3, 'Fukushima')
insert into shops(name, rating, prefecture) values ('d shoten', 1, 'Ibaragi')
insert into shops(name, rating, prefecture) values ('e shoten', 1, 'Tochigi')
insert into shops(name, rating, prefecture) values ('f shoten', 4 , 'Gunma')



create table reservations(
    id int identity(1,1) primary key,
    shopId int,
    name varchar(50),
);


select * from sys.tables;


insert into reservations (shopid, name) values(1, 'Adam');
insert into reservations(shopid, name) VALUEs (3, 'Beth');
insert into reservations(shopId, name) values (5, 'Chris');
select * from reservations


select s.name, r.name from shops s
inner join reservations r
on s.id = r.shopId;



-- Clean up 
drop table shops
select * from sys.tables