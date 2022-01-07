
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL818_CTR1 ;
 scalar_t__ PCL818_CTR2 ;
 scalar_t__ PCL818_CTRCTL ;
 int outb (unsigned int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void start_pacer(struct comedi_device *dev, int mode,
   unsigned int divisor1, unsigned int divisor2)
{
 outb(0xb4, dev->iobase + PCL818_CTRCTL);
 outb(0x74, dev->iobase + PCL818_CTRCTL);
 udelay(1);

 if (mode == 1) {
  outb(divisor2 & 0xff, dev->iobase + PCL818_CTR2);
  outb((divisor2 >> 8) & 0xff, dev->iobase + PCL818_CTR2);
  outb(divisor1 & 0xff, dev->iobase + PCL818_CTR1);
  outb((divisor1 >> 8) & 0xff, dev->iobase + PCL818_CTR1);
 }
}
