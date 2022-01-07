
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; scalar_t__ BADR2; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DAC0_OFFSET ;
 scalar_t__ DAC1_OFFSET ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_ao_winsn(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);



 for (i = 0; i < insn->n; i++) {
  switch (chan) {
  case 0:
   outw(data[i] & 0x0FFF, devpriv->BADR2 + DAC0_OFFSET);
   break;
  case 1:
   outw(data[i] & 0x0FFF, devpriv->BADR2 + DAC1_OFFSET);
   break;
  default:
   return -1;
  }
  devpriv->ao_readback[chan] = data[i];
 }


 return i;
}
