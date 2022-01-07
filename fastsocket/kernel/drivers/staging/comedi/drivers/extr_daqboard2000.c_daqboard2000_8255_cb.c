
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readw (void*) ;
 int writew (int,void*) ;

__attribute__((used)) static int daqboard2000_8255_cb(int dir, int port, int data,
    unsigned long ioaddr)
{
 int result = 0;
 if (dir) {
  writew(data, ((void *)ioaddr) + port * 2);
  result = 0;
 } else {
  result = readw(((void *)ioaddr) + port * 2);
 }




 return result;
}
