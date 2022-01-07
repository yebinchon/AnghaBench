
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int slot; } ;


 TYPE_1__* devpriv ;
 int dt9812_digital_out (int ,int) ;
 int dt9812_digital_out_shadow (int ,int*) ;

__attribute__((used)) static int dt9812_do_winsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int n;
 u8 bits = 0;

 dt9812_digital_out_shadow(devpriv->slot, &bits);
 for (n = 0; n < insn->n; n++) {
  u8 mask = 1 << insn->chanspec;

  bits &= ~mask;
  if (data[n])
   bits |= mask;
 }
 dt9812_digital_out(devpriv->slot, bits);
 return n;
}
