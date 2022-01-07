
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DIO_R ;
 scalar_t__ DIO_W ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int subdev_700_cb(int dir, int port, int data, unsigned long arg)
{

 unsigned long iobase = arg;

 if (dir) {
  outb(data, iobase + DIO_W);
  return 0;
 } else {
  return inb(iobase + DIO_R);
 }
}
