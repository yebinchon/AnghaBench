
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int board_name; int minor; } ;
struct TYPE_2__ {int mode_reg_int; } ;


 int ETIME ;
 scalar_t__ PCL812_AD_HI ;
 scalar_t__ PCL812_AD_LO ;
 int PCL812_DRDY ;
 scalar_t__ PCL812_MODE ;
 scalar_t__ PCL812_SOFTTRIG ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*,int ,int ,scalar_t__) ;
 int setup_range_channel (struct comedi_device*,struct comedi_subdevice*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int pcl812_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int timeout, hi;

 outb(devpriv->mode_reg_int | 1, dev->iobase + PCL812_MODE);
 setup_range_channel(dev, s, insn->chanspec, 1);
 for (n = 0; n < insn->n; n++) {
  outb(255, dev->iobase + PCL812_SOFTTRIG);
  udelay(5);
  timeout = 50;
  while (timeout--) {
   hi = inb(dev->iobase + PCL812_AD_HI);
   if (!(hi & PCL812_DRDY))
    goto conv_finish;
   udelay(1);
  }
  printk
      ("comedi%d: pcl812: (%s at 0x%lx) A/D insn read timeout\n",
       dev->minor, dev->board_name, dev->iobase);
  outb(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
  return -ETIME;

conv_finish:
  data[n] = ((hi & 0xf) << 8) | inb(dev->iobase + PCL812_AD_LO);
 }
 outb(devpriv->mode_reg_int | 0, dev->iobase + PCL812_MODE);
 return n;
}
