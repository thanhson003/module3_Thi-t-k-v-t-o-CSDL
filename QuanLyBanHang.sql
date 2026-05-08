create database `QuanLyBanHang`;
use QuanLyBanHang;
create table Customer(
cID int not null auto_increment primary key,
cName varchar(30) not null,
cAge int not null
);

create table Order1(
oID int not null auto_increment primary key,
cID int not null,
oDate datetime,
oTotalPrice float not null,
foreign key(cID) references Customer(cID) 
);

create table Product(
pID int not null auto_increment primary key,
pName varchar(30) not null,
pPrice float not null
);

create table OrderDetail(
oID int not null ,
pID int not null ,
primary key(oID,pID),
odQTY  int not null,
foreign key(oID) references Order1(oID),
foreign key(pID) references Product(pID)
);

