
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 unsigned int CR_CHAN (int ) ;
 int SUBS_AO ;
 TYPE_1__* devpriv ;
 int dt3k_writesingle (struct comedi_device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dt3k_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
   struct comedi_insn *insn, unsigned int *data)
{
 int i;
 unsigned int chan;

 chan = CR_CHAN(insn->chanspec);
 for (i = 0; i < insn->n; i++) {
  dt3k_writesingle(dev, SUBS_AO, chan, data[i]);
  devpriv->ao_readback[chan] = data[i];
 }

 return i;
}
