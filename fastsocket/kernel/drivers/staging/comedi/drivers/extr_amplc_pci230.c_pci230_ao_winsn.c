
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int ao_bipolar; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ PCI230_DACCON ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;
 int * pci230_ao_bipolar ;
 int pci230_ao_write_nofifo (struct comedi_device*,unsigned int,int) ;

__attribute__((used)) static int pci230_ao_winsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int i;
 int chan, range;


 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);



 devpriv->ao_bipolar = pci230_ao_bipolar[range];
 outw(range, dev->iobase + PCI230_DACCON);



 for (i = 0; i < insn->n; i++) {

  pci230_ao_write_nofifo(dev, data[i], chan);
 }


 return i;
}
