
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DPRINTK (char*,...) ;
 scalar_t__ PCI171x_CNT1 ;
 scalar_t__ PCI171x_CNT2 ;
 scalar_t__ PCI171x_CNTCTRL ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void start_pacer(struct comedi_device *dev, int mode,
   unsigned int divisor1, unsigned int divisor2)
{
 DPRINTK("adv_pci1710 EDBG: BGN: start_pacer(%d,%u,%u)\n", mode,
  divisor1, divisor2);
 outw(0xb4, dev->iobase + PCI171x_CNTCTRL);
 outw(0x74, dev->iobase + PCI171x_CNTCTRL);

 if (mode == 1) {
  outw(divisor2 & 0xff, dev->iobase + PCI171x_CNT2);
  outw((divisor2 >> 8) & 0xff, dev->iobase + PCI171x_CNT2);
  outw(divisor1 & 0xff, dev->iobase + PCI171x_CNT1);
  outw((divisor1 >> 8) & 0xff, dev->iobase + PCI171x_CNT1);
 }
 DPRINTK("adv_pci1710 EDBG: END: start_pacer(...)\n");
}
