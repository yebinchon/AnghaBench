
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ cnt0_write_wait; } ;


 scalar_t__ PCI171x_CNT0 ;
 scalar_t__ PCI171x_CNTCTRL ;
 TYPE_1__* devpriv ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int pci171x_insn_counter_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 uint msb, lsb, ccntrl, status;

 lsb = data[0] & 0x00FF;
 msb = (data[0] & 0xFF00) >> 8;


 outw(lsb, dev->iobase + PCI171x_CNT0);
 outw(msb, dev->iobase + PCI171x_CNT0);

 if (devpriv->cnt0_write_wait) {

  ccntrl = 0xE2;
  do {
   outw(ccntrl, dev->iobase + PCI171x_CNTCTRL);
   status = inw(dev->iobase + PCI171x_CNT0) & 0xFF;
  } while (status & 0x40);
 }

 return insn->n;
}
