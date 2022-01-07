
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 size_t CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int EIO ;
 scalar_t__ PCL818_AD_HI ;
 scalar_t__ PCL818_AD_LO ;
 scalar_t__ PCL818_CLRINT ;
 scalar_t__ PCL818_CONTROL ;
 scalar_t__ PCL818_MUX ;
 scalar_t__ PCL818_RANGE ;
 scalar_t__ PCL818_STATUS ;
 int comedi_error (struct comedi_device*,char*) ;
 int inb (scalar_t__) ;
 int * muxonechan ;
 int outb (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int pcl818_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int timeout;


 outb(0, dev->iobase + PCL818_CONTROL);


 outb(muxonechan[CR_CHAN(insn->chanspec)], dev->iobase + PCL818_MUX);


 outb(CR_RANGE(insn->chanspec), dev->iobase + PCL818_RANGE);

 for (n = 0; n < insn->n; n++) {


  outb(0, dev->iobase + PCL818_CLRINT);


  outb(0, dev->iobase + PCL818_AD_LO);

  timeout = 100;
  while (timeout--) {
   if (inb(dev->iobase + PCL818_STATUS) & 0x10)
    goto conv_finish;
   udelay(1);
  }
  comedi_error(dev, "A/D insn timeout");

  outb(0, dev->iobase + PCL818_CLRINT);
  return -EIO;

conv_finish:
  data[n] = ((inb(dev->iobase + PCL818_AD_HI) << 4) |
      (inb(dev->iobase + PCL818_AD_LO) >> 4));
 }

 return n;
}
