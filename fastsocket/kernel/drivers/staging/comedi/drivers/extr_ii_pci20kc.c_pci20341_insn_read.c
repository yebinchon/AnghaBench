
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ai_gain; } ;
union pci20xxx_subdev_private {scalar_t__ iobase; TYPE_1__ pci20341; } ;
struct comedi_subdevice {union pci20xxx_subdev_private* private; } ;
struct comedi_insn {unsigned int n; int chanspec; } ;
struct comedi_device {int minor; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;
 scalar_t__ PCI20341_CC_RESET ;
 scalar_t__ PCI20341_CHAN_LIST ;
 scalar_t__ PCI20341_CHAN_RESET ;
 int PCI20341_DAISY_CHAIN ;
 scalar_t__ PCI20341_LCHAN_ADDR_REG ;
 scalar_t__ PCI20341_LDATA ;
 int PCI20341_MUX ;
 scalar_t__ PCI20341_SOFT_PACER ;
 scalar_t__ PCI20341_STATUS_REG ;
 int printk (char*,int ,unsigned int) ;
 void* readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pci20341_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 union pci20xxx_subdev_private *sdp = s->private;
 unsigned int i = 0, j = 0;
 int lo, hi;
 unsigned char eoc;
 unsigned int clb;
 unsigned int boarddata;

 writeb(1, sdp->iobase + PCI20341_LCHAN_ADDR_REG);
 clb = PCI20341_DAISY_CHAIN | PCI20341_MUX | (sdp->pci20341.ai_gain << 3)
     | CR_CHAN(insn->chanspec);
 writeb(clb, sdp->iobase + PCI20341_CHAN_LIST);
 writeb(0x00, sdp->iobase + PCI20341_CC_RESET);
 writeb(0x00, sdp->iobase + PCI20341_CHAN_RESET);



 for (i = 0; i < insn->n; i++) {




  j = 0;
  readb(sdp->iobase + PCI20341_SOFT_PACER);
  eoc = readb(sdp->iobase + PCI20341_STATUS_REG);
  while ((eoc < 0x80) && j < 100) {
   j++;
   eoc = readb(sdp->iobase + PCI20341_STATUS_REG);
  }
  if (j >= 100) {
   printk
       ("comedi%d:  pci20xxx: AI interrupt channel %i polling exit !\n",
        dev->minor, i);
   return -EINVAL;
  }
  lo = readb(sdp->iobase + PCI20341_LDATA);
  hi = readb(sdp->iobase + PCI20341_LDATA + 1);
  boarddata = lo + 0x100 * hi;
  data[i] = (short)((boarddata + 0x8000) & 0xffff);
 }

 return i;
}
