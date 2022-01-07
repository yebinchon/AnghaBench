
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {size_t ui_Read; TYPE_1__* s_FIFOInterruptParameters; } ;
struct TYPE_6__ {TYPE_2__ s_InterruptParameters; int tsk_Current; } ;
struct TYPE_4__ {unsigned int b_OldModuleMask; unsigned int ul_OldInterruptMask; unsigned int ul_OldCounterLatchValue; } ;
 int APCI1710_SAVE_INTERRUPT ;
 scalar_t__ CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int current ;
 TYPE_3__* devpriv ;
 int i_APCI1710_Get16BitCBStatus (struct comedi_device*,unsigned char,unsigned char*,unsigned char*) ;
 int i_APCI1710_GetCBStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_GetIndexStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_GetInterruptUDLatchedStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_GetReferenceStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_GetUASStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_GetUDStatus (struct comedi_device*,unsigned char,unsigned char*) ;
 int i_APCI1710_Read16BitCounterValue (struct comedi_device*,unsigned char,unsigned char,unsigned int*) ;
 int i_APCI1710_Read32BitCounterValue (struct comedi_device*,unsigned char,unsigned int*) ;
 int i_APCI1710_ReadFrequencyMeasurement (struct comedi_device*,unsigned char,unsigned char*,unsigned char*,unsigned int*) ;
 int i_APCI1710_ReadLatchRegisterStatus (struct comedi_device*,unsigned char,unsigned char,unsigned char*) ;
 int i_APCI1710_ReadLatchRegisterValue (struct comedi_device*,unsigned char,unsigned char,unsigned int*) ;
 int printk (char*,...) ;

int i_APCI1710_InsnReadINCCPT(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_ReadType;
 int i_ReturnValue = 0;

 ui_ReadType = CR_CHAN(insn->chanspec);

 devpriv->tsk_Current = current;
 switch (ui_ReadType) {
 case 129:
  i_ReturnValue = i_APCI1710_ReadLatchRegisterStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char) CR_RANGE(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 128:
  i_ReturnValue = i_APCI1710_ReadLatchRegisterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char) CR_RANGE(insn->chanspec), (unsigned int *) &data[0]);
  printk("Latch Register Value %d\n", data[0]);
  break;

 case 133:
  i_ReturnValue = i_APCI1710_Read16BitCounterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char) CR_RANGE(insn->chanspec), (unsigned int *) &data[0]);
  break;

 case 132:
  i_ReturnValue = i_APCI1710_Read32BitCounterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned int *) &data[0]);
  break;

 case 138:
  i_ReturnValue = i_APCI1710_GetIndexStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 136:
  i_ReturnValue = i_APCI1710_GetReferenceStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 135:
  i_ReturnValue = i_APCI1710_GetUASStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 139:
  i_ReturnValue = i_APCI1710_GetCBStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 140:
  i_ReturnValue = i_APCI1710_Get16BitCBStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char *) &data[0], (unsigned char *) &data[1]);
  break;

 case 134:
  i_ReturnValue = i_APCI1710_GetUDStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);

  break;

 case 137:
  i_ReturnValue = i_APCI1710_GetInterruptUDLatchedStatus(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char *) &data[0]);
  break;

 case 131:
  i_ReturnValue = i_APCI1710_ReadFrequencyMeasurement(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char *) &data[0],
   (unsigned char *) &data[1], (unsigned int *) &data[2]);
  break;

 case 130:
  data[0] = devpriv->s_InterruptParameters.
   s_FIFOInterruptParameters[devpriv->
   s_InterruptParameters.ui_Read].b_OldModuleMask;
  data[1] = devpriv->s_InterruptParameters.
   s_FIFOInterruptParameters[devpriv->
   s_InterruptParameters.ui_Read].ul_OldInterruptMask;
  data[2] = devpriv->s_InterruptParameters.
   s_FIFOInterruptParameters[devpriv->
   s_InterruptParameters.ui_Read].ul_OldCounterLatchValue;





  devpriv->
   s_InterruptParameters.
   ui_Read = (devpriv->s_InterruptParameters.
   ui_Read + 1) % APCI1710_SAVE_INTERRUPT;

  break;

 default:
  printk("ReadType Parameter wrong\n");
 }

 if (i_ReturnValue >= 0)
  i_ReturnValue = insn->n;
 return i_ReturnValue;

}
