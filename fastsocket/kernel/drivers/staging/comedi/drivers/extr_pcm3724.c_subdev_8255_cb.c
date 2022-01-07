
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static int subdev_8255_cb(int dir, int port, int data, unsigned long arg)
{
 unsigned long iobase = arg;
 unsigned char inbres;

 if (dir) {

  outb(data, iobase + port);
  return 0;
 } else {
  inbres = inb(iobase + port);

  return inbres;
 }
}
