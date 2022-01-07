
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_data; } ;


 int CR_CHAN (int ) ;
 int DPRINTK (char*) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int pci1723_insn_read_ao(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int n, chan;

 chan = CR_CHAN(insn->chanspec);
 DPRINTK(" adv_PCI1723 DEBUG: pci1723_insn_read_ao() ----- \n");
 for (n = 0; n < insn->n; n++)
  data[n] = devpriv->ao_data[chan];

 return n;
}
