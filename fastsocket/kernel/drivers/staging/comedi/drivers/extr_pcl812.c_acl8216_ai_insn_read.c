
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int board_name; int minor; } ;


 int ACL8216_DRDY ;
 scalar_t__ ACL8216_STATUS ;
 int ETIME ;
 scalar_t__ PCL812_AD_HI ;
 scalar_t__ PCL812_AD_LO ;
 scalar_t__ PCL812_MODE ;
 scalar_t__ PCL812_SOFTTRIG ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*,int ,int ,scalar_t__) ;
 int setup_range_channel (struct comedi_device*,struct comedi_subdevice*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int acl8216_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int timeout;

 outb(1, dev->iobase + PCL812_MODE);
 setup_range_channel(dev, s, insn->chanspec, 1);
 for (n = 0; n < insn->n; n++) {
  outb(255, dev->iobase + PCL812_SOFTTRIG);
  udelay(5);
  timeout = 50;
  while (timeout--) {
   if (!(inb(dev->iobase + ACL8216_STATUS) & ACL8216_DRDY))
    goto conv_finish;
   udelay(1);
  }
  printk
      ("comedi%d: pcl812: (%s at 0x%lx) A/D insn read timeout\n",
       dev->minor, dev->board_name, dev->iobase);
  outb(0, dev->iobase + PCL812_MODE);
  return -ETIME;

conv_finish:
  data[n] =
      (inb(dev->iobase +
    PCL812_AD_HI) << 8) | inb(dev->iobase + PCL812_AD_LO);
 }
 outb(0, dev->iobase + PCL812_MODE);
 return n;
}
