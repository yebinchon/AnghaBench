
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DPRINTK (char*) ;
 int EIO ;
 scalar_t__ PCL816_AD_HI ;
 scalar_t__ PCL816_AD_LO ;
 scalar_t__ PCL816_CLRINT ;
 scalar_t__ PCL816_CONTROL ;
 scalar_t__ PCL816_MUX ;
 scalar_t__ PCL816_RANGE ;
 scalar_t__ PCL816_STATUS ;
 int PCL816_STATUS_DRDY_MASK ;
 int comedi_error (struct comedi_device*,char*) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int pcl816_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int timeout;

 DPRINTK("mode 0 analog input\n");

 outb(0, dev->iobase + PCL816_CONTROL);

 outb(0, dev->iobase + PCL816_CLRINT);


 outb(CR_CHAN(insn->chanspec) & 0xf, dev->iobase + PCL816_MUX);
 outb(CR_RANGE(insn->chanspec), dev->iobase + PCL816_RANGE);

 for (n = 0; n < insn->n; n++) {

  outb(0, dev->iobase + PCL816_AD_LO);

  timeout = 100;
  while (timeout--) {
   if (!(inb(dev->iobase + PCL816_STATUS) &
         PCL816_STATUS_DRDY_MASK)) {

    data[n] =
        ((inb(dev->iobase +
       PCL816_AD_HI) << 8) |
         (inb(dev->iobase + PCL816_AD_LO)));

    outb(0, dev->iobase + PCL816_CLRINT);
    break;
   }
   udelay(1);
  }

  if (!timeout) {
   comedi_error(dev, "A/D insn timeout\n");
   data[0] = 0;
   outb(0, dev->iobase + PCL816_CLRINT);
   return -EIO;
  }

 }
 return n;
}
