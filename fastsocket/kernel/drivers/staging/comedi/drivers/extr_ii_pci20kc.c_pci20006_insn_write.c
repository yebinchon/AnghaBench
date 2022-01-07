
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* last_data; } ;
union pci20xxx_subdev_private {scalar_t__ iobase; TYPE_1__ pci20006; } ;
struct comedi_subdevice {union pci20xxx_subdev_private* private; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int minor; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;
 scalar_t__ PCI20006_LCHAN0 ;
 scalar_t__ PCI20006_LCHAN1 ;
 scalar_t__ PCI20006_STROBE0 ;
 scalar_t__ PCI20006_STROBE1 ;
 int printk (char*,int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pci20006_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 union pci20xxx_subdev_private *sdp = s->private;
 int hi, lo;
 unsigned int boarddata;

 sdp->pci20006.last_data[CR_CHAN(insn->chanspec)] = data[0];
 boarddata = (((unsigned int)data[0] + 0x8000) & 0xffff);
 lo = (boarddata & 0xff);
 hi = ((boarddata >> 8) & 0xff);

 switch (CR_CHAN(insn->chanspec)) {
 case 0:
  writeb(lo, sdp->iobase + PCI20006_LCHAN0);
  writeb(hi, sdp->iobase + PCI20006_LCHAN0 + 1);
  writeb(0x00, sdp->iobase + PCI20006_STROBE0);
  break;
 case 1:
  writeb(lo, sdp->iobase + PCI20006_LCHAN1);
  writeb(hi, sdp->iobase + PCI20006_LCHAN1 + 1);
  writeb(0x00, sdp->iobase + PCI20006_STROBE1);
  break;
 default:
  printk(" comedi%d: pci20xxx: ao channel Error!\n", dev->minor);
  return -EINVAL;
 }

 return 1;
}
