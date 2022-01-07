
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
 int i_APCI1710_ClearAllCounterValue (struct comedi_device*) ;
 int i_APCI1710_ClearCounterValue (struct comedi_device*,unsigned char) ;
 int i_APCI1710_LatchCounter (struct comedi_device*,unsigned char,unsigned char) ;
 int i_APCI1710_SetDigitalChlOff (struct comedi_device*,unsigned char) ;
 int i_APCI1710_SetDigitalChlOn (struct comedi_device*,unsigned char) ;
 int i_APCI1710_SetIndexAndReferenceSource (struct comedi_device*,unsigned char,unsigned char) ;
 int i_APCI1710_SetInputFilter (struct comedi_device*,unsigned char,unsigned char,unsigned char) ;
 int printk (char*) ;

int i_APCI1710_InsnBitsINCCPT(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_BitsType;
 int i_ReturnValue = 0;
 ui_BitsType = CR_CHAN(insn->chanspec);
 devpriv->tsk_Current = current;

 switch (ui_BitsType) {
 case 133:
  i_ReturnValue = i_APCI1710_ClearCounterValue(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 134:
  i_ReturnValue = i_APCI1710_ClearAllCounterValue(dev);
  break;

 case 128:
  i_ReturnValue = i_APCI1710_SetInputFilter(dev,
   (unsigned char) CR_AREF(insn->chanspec),
   (unsigned char) data[0], (unsigned char) data[1]);
  break;

 case 132:
  i_ReturnValue = i_APCI1710_LatchCounter(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char) data[0]);
  break;

 case 129:
  i_ReturnValue = i_APCI1710_SetIndexAndReferenceSource(dev,
   (unsigned char) CR_AREF(insn->chanspec), (unsigned char) data[0]);
  break;

 case 130:
  i_ReturnValue = i_APCI1710_SetDigitalChlOn(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 case 131:
  i_ReturnValue = i_APCI1710_SetDigitalChlOff(dev,
   (unsigned char) CR_AREF(insn->chanspec));
  break;

 default:
  printk("Bits Config Parameter Wrong\n");
 }

 if (i_ReturnValue >= 0)
  i_ReturnValue = insn->n;
 return i_ReturnValue;
}
