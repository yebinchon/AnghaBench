
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int da_ranges; int* ao_data; } ;


 int DPRINTK (char*) ;
 scalar_t__ PCI1720_DA0 ;
 scalar_t__ PCI1720_DA1 ;
 scalar_t__ PCI1720_DA2 ;
 scalar_t__ PCI1720_DA3 ;
 scalar_t__ PCI1720_RANGE ;
 scalar_t__ PCI1720_SYNCONT ;
 scalar_t__ PCI1720_SYNCOUT ;
 int Syncont_SC0 ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int pci1720_reset(struct comedi_device *dev)
{
 DPRINTK("adv_pci1710 EDBG: BGN: pci1720_reset(...)\n");
 outb(Syncont_SC0, dev->iobase + PCI1720_SYNCONT);
 devpriv->da_ranges = 0xAA;
 outb(devpriv->da_ranges, dev->iobase + PCI1720_RANGE);
 outw(0x0800, dev->iobase + PCI1720_DA0);
 outw(0x0800, dev->iobase + PCI1720_DA1);
 outw(0x0800, dev->iobase + PCI1720_DA2);
 outw(0x0800, dev->iobase + PCI1720_DA3);
 outb(0, dev->iobase + PCI1720_SYNCOUT);
 devpriv->ao_data[0] = 0x0800;
 devpriv->ao_data[1] = 0x0800;
 devpriv->ao_data[2] = 0x0800;
 devpriv->ao_data[3] = 0x0800;
 DPRINTK("adv_pci1710 EDBG: END: pci1720_reset(...)\n");
 return 0;
}
