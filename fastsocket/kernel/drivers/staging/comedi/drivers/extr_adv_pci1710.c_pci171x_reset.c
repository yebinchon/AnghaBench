
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int CntrlReg; int* ao_data; scalar_t__ da_ranges; } ;
struct TYPE_3__ {int n_aochan; } ;


 int Control_CNT0 ;
 int Control_SW ;
 int DPRINTK (char*) ;
 scalar_t__ PCI171x_CLRFIFO ;
 scalar_t__ PCI171x_CLRINT ;
 scalar_t__ PCI171x_CNTCTRL ;
 scalar_t__ PCI171x_CONTROL ;
 scalar_t__ PCI171x_DA1 ;
 scalar_t__ PCI171x_DA2 ;
 scalar_t__ PCI171x_DAREF ;
 scalar_t__ PCI171x_DO ;
 TYPE_2__* devpriv ;
 int outb (scalar_t__,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int start_pacer (struct comedi_device*,int,int ,int ) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pci171x_reset(struct comedi_device *dev)
{
 DPRINTK("adv_pci1710 EDBG: BGN: pci171x_reset(...)\n");
 outw(0x30, dev->iobase + PCI171x_CNTCTRL);
 devpriv->CntrlReg = Control_SW | Control_CNT0;
 outw(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);
 outb(0, dev->iobase + PCI171x_CLRFIFO);
 outb(0, dev->iobase + PCI171x_CLRINT);
 start_pacer(dev, -1, 0, 0);
 devpriv->da_ranges = 0;
 if (this_board->n_aochan) {
  outb(devpriv->da_ranges, dev->iobase + PCI171x_DAREF);
  outw(0, dev->iobase + PCI171x_DA1);
  devpriv->ao_data[0] = 0x0000;
  if (this_board->n_aochan > 1) {
   outw(0, dev->iobase + PCI171x_DA2);
   devpriv->ao_data[1] = 0x0000;
  }
 }
 outw(0, dev->iobase + PCI171x_DO);
 outb(0, dev->iobase + PCI171x_CLRFIFO);
 outb(0, dev->iobase + PCI171x_CLRINT);

 DPRINTK("adv_pci1710 EDBG: END: pci171x_reset(...)\n");
 return 0;
}
