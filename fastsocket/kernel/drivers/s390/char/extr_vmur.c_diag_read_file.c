
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENODATA ;
 int ENOMEDIUM ;
 int diag14 (unsigned long,int,int) ;

__attribute__((used)) static int diag_read_file(int devno, char *buf)
{
 int cc;

 cc = diag14((unsigned long) buf, devno, 0x00);
 switch (cc) {
 case 0:
  return 0;
 case 1:
  return -ENODATA;
 case 2:
  return -ENOMEDIUM;
 default:
  return -EIO;
 }
}
