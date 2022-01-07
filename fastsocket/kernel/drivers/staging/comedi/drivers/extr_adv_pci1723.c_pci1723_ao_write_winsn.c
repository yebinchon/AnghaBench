
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* ao_data; } ;


 int CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 scalar_t__ PCI1723_DA (int) ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int pci1723_ao_write_winsn(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n, chan;
 chan = CR_CHAN(insn->chanspec);

 DPRINTK("PCI1723: the pci1723_ao_write_winsn() ------\n");

 for (n = 0; n < insn->n; n++) {

  devpriv->ao_data[chan] = data[n];
  outw(data[n], dev->iobase + PCI1723_DA(chan));
 }

 return n;
}
