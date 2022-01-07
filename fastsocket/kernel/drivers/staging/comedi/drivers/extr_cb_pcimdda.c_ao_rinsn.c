
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; scalar_t__ registers; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int inw (scalar_t__) ;

__attribute__((used)) static int ao_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++) {
  inw(devpriv->registers + chan * 2);


  data[i] = devpriv->ao_readback[chan];
 }

 return i;
}
