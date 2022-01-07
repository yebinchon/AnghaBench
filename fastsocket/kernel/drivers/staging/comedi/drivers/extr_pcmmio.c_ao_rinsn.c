
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int* shadow_samples; } ;
struct TYPE_4__ {TYPE_1__ ao; } ;


 unsigned int CR_CHAN (int ) ;
 TYPE_2__* subpriv ;

__attribute__((used)) static int ao_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int n;
 for (n = 0; n < insn->n; n++) {
  unsigned chan = CR_CHAN(insn->chanspec);
  if (chan < s->n_chan)
   data[n] = subpriv->ao.shadow_samples[chan];
 }
 return n;
}
