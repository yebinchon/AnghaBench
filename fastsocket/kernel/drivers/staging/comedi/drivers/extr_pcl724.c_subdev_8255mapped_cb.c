
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SIZE_8255 ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static int subdev_8255mapped_cb(int dir, int port, int data,
    unsigned long iobase)
{
 int movport = SIZE_8255 * (iobase >> 12);

 iobase &= 0x0fff;

 if (dir) {
  outb(port + movport, iobase);
  outb(data, iobase + 1);
  return 0;
 } else {
  outb(port + movport, iobase);
  return inb(iobase + 1);
 }
}
