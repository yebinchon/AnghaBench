
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {size_t ui_Read; TYPE_1__* s_FIFOInterruptParameters; } ;
struct TYPE_6__ {TYPE_2__ s_InterruptParameters; } ;
struct TYPE_4__ {unsigned int b_OldModuleMask; unsigned int ul_OldInterruptMask; unsigned int ul_OldCounterLatchValue; } ;


 int APCI1710_SAVE_INTERRUPT ;
 TYPE_3__* devpriv ;

int i_APCI1710_InsnReadInterruptPulseEncoder(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{

 data[0] = devpriv->s_InterruptParameters.
  s_FIFOInterruptParameters[devpriv->
  s_InterruptParameters.ui_Read].b_OldModuleMask;
 data[1] = devpriv->s_InterruptParameters.
  s_FIFOInterruptParameters[devpriv->
  s_InterruptParameters.ui_Read].ul_OldInterruptMask;
 data[2] = devpriv->s_InterruptParameters.
  s_FIFOInterruptParameters[devpriv->
  s_InterruptParameters.ui_Read].ul_OldCounterLatchValue;





 devpriv->s_InterruptParameters.
  ui_Read = (devpriv->
  s_InterruptParameters.ui_Read + 1) % APCI1710_SAVE_INTERRUPT;

 return insn->n;

}
