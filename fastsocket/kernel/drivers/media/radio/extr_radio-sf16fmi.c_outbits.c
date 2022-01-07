
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void outbits(int bits, unsigned int data, int io)
{
 while (bits--) {
  if (data & 1) {
   outb(5, io);
   udelay(6);
   outb(7, io);
   udelay(6);
  } else {
   outb(1, io);
   udelay(6);
   outb(3, io);
   udelay(6);
  }
  data >>= 1;
 }
}
