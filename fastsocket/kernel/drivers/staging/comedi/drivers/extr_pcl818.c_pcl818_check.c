
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCL818_CONTROL ;
 scalar_t__ PCL818_MUX ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int pcl818_check(unsigned long iobase)
{
 outb(0x00, iobase + PCL818_MUX);
 udelay(1);
 if (inb(iobase + PCL818_MUX) != 0x00)
  return 1;
 outb(0x55, iobase + PCL818_MUX);
 udelay(1);
 if (inb(iobase + PCL818_MUX) != 0x55)
  return 1;
 outb(0x00, iobase + PCL818_MUX);
 udelay(1);
 outb(0x18, iobase + PCL818_CONTROL);
 udelay(1);
 if (inb(iobase + PCL818_CONTROL) != 0x18)
  return 1;
 return 0;
}
