
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int tsk_Current; } ;
 scalar_t__ CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 int current ;
 TYPE_1__* devpriv ;
 int i_APCI1710_DisableCompareLogic (struct comedi_device*,unsigned char) ;
 int i_APCI1710_DisableFrequencyMeasurement (struct comedi_device*,unsigned char) ;
 int i_APCI1710_DisableIndex (struct comedi_device*,unsigned char) ;
 int i_APCI1710_DisableLatchInterrupt (struct comedi_device*,unsigned char) ;
 int i_APCI1710_EnableCompareLogic (struct comedi_device*,unsigned char) ;
 int i_APCI1710_EnableFrequencyMeasurement (struct comedi_device*,unsigned char,unsigned char) ;
 int i_APCI1710_EnableIndex (struct comedi_device*,unsigned char) ;
 int i_APCI1710_EnableLatchInterrupt (struct comedi_device*,unsigned char) ;
 int i_APCI1710_Write16BitCounterValue (struct comedi_device*,unsigned char,unsigned char,unsigned int) ;
 int i_APCI1710_Write32BitCounterValue (struct comedi_device*,unsigned char,unsigned int) ;
 int printk (char*) ;

int i_APCI1710_InsnWriteINCCPT(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_WriteType;
 int i_ReturnValue = 0;

 ui_WriteType = CR_CHAN(insn->chanspec);
 devpriv->tsk_Current = current;

 switch (ui_WriteType) {
 case 130:
  i_ReturnValue = i_APCI1710_EnableLatchInterrupt(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 134:
  i_ReturnValue = i_APCI1710_DisableLatchInterrupt(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 129:
  i_ReturnValue = i_APCI1710_Write16BitCounterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char) data[0], (unsigned int) data[1]);
  break;

 case 128:
  i_ReturnValue = i_APCI1710_Write32BitCounterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned int) data[0]);

  break;

 case 131:
  i_APCI1710_EnableIndex(dev, (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 135:
  i_ReturnValue = i_APCI1710_DisableIndex(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 133:
  i_ReturnValue = i_APCI1710_EnableCompareLogic(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 137:
  i_ReturnValue = i_APCI1710_DisableCompareLogic(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 132:
  i_ReturnValue = i_APCI1710_EnableFrequencyMeasurement(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char) data[0]);
  break;

 case 136:
  i_ReturnValue = i_APCI1710_DisableFrequencyMeasurement(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 default:
  printk("Write Config Parameter Wrong\n");
 }

 if (i_ReturnValue >= 0)
  i_ReturnValue = insn->n;
 return i_ReturnValue;
}
