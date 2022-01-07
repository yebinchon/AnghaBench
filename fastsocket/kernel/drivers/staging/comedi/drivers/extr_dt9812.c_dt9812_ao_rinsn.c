
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int slot; } ;


 TYPE_1__* devpriv ;
 int dt9812_analog_out_shadow (int ,int ,unsigned int*) ;

__attribute__((used)) static int dt9812_ao_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int n;
 u16 value;

 for (n = 0; n < insn->n; n++) {
  value = 0;
  dt9812_analog_out_shadow(devpriv->slot, insn->chanspec, &value);
  data[n] = value;
 }
 return n;
}
