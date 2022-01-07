
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timebase; int settling_time; } ;
union pci20xxx_subdev_private {scalar_t__ iobase; TYPE_1__ pci20341; } ;
struct comedi_subdevice {int maxdata; int range_table; int insn_read; int len_chanlist; int n_chan; int subdev_flags; int type; union pci20xxx_subdev_private* private; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_SUBD_AI ;
 int PCI20341_CHAN_NR ;
 scalar_t__ PCI20341_CONFIG_REG ;
 int PCI20341_INIT ;
 scalar_t__ PCI20341_MOD_STATUS ;
 scalar_t__ PCI20341_OPT_REG ;
 int PCI20341_PACER ;
 int PCI20341_REPMODE ;
 int PCI20341_SCANLIST ;
 scalar_t__ PCI20341_SET_TIME_REG ;
 int SDF_READABLE ;
 int pci20341_insn_read ;
 int * pci20341_ranges ;
 int* pci20341_settling_time ;
 int* pci20341_timebase ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pci20341_init(struct comedi_device *dev, struct comedi_subdevice *s,
    int opt0, int opt1)
{
 union pci20xxx_subdev_private *sdp = s->private;
 int option;


 if (opt0 < 0 || opt0 > 3)
  opt0 = 0;
 sdp->pci20341.timebase = pci20341_timebase[opt0];
 sdp->pci20341.settling_time = pci20341_settling_time[opt0];


 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = PCI20341_CHAN_NR;
 s->len_chanlist = PCI20341_SCANLIST;
 s->insn_read = pci20341_insn_read;
 s->maxdata = 0xffff;
 s->range_table = pci20341_ranges[opt0];

 option = sdp->pci20341.timebase | PCI20341_REPMODE;

 writeb(PCI20341_INIT, sdp->iobase + PCI20341_CONFIG_REG);
 writeb(PCI20341_PACER, sdp->iobase + PCI20341_MOD_STATUS);
 writeb(option, sdp->iobase + PCI20341_OPT_REG);
 writeb(sdp->pci20341.settling_time, sdp->iobase + PCI20341_SET_TIME_REG);

 return 0;
}
