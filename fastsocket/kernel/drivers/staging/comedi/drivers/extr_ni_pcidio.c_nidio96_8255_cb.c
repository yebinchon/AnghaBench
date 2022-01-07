
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readb (void*) ;
 int writeb (int,void*) ;

__attribute__((used)) static int nidio96_8255_cb(int dir, int port, int data, unsigned long iobase)
{
 if (dir) {
  writeb(data, (void *)(iobase + port));
  return 0;
 } else {
  return readb((void *)(iobase + port));
 }
}
