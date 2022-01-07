
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int da_ranges; unsigned int* ao_data; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ PCI1720_DA0 ;
 scalar_t__ PCI1720_RANGE ;
 scalar_t__ PCI1720_SYNCOUT ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int pci1720_insn_write_ao(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int n, rangereg, chan;

 chan = CR_CHAN(insn->chanspec);
 rangereg = devpriv->da_ranges & (~(0x03 << (chan << 1)));
 rangereg |= (CR_RANGE(insn->chanspec) << (chan << 1));
 if (rangereg != devpriv->da_ranges) {
  outb(rangereg, dev->iobase + PCI1720_RANGE);
  devpriv->da_ranges = rangereg;
 }

 for (n = 0; n < insn->n; n++) {
  outw(data[n], dev->iobase + PCI1720_DA0 + (chan << 1));
  outb(0, dev->iobase + PCI1720_SYNCOUT);
 }

 devpriv->ao_data[chan] = data[n];

 return n;
}
