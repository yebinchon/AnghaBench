
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;






 scalar_t__ CR_AREF (int ) ;
 scalar_t__ CR_CHAN (int ) ;
 int i_APCI1710_GetTimerOutputLevel (struct comedi_device*,unsigned char,unsigned char,unsigned char*) ;
 int i_APCI1710_GetTimerProgressStatus (struct comedi_device*,unsigned char,unsigned char,unsigned char*) ;
 int i_APCI1710_ReadTimerValue (struct comedi_device*,unsigned char,unsigned char,unsigned int*) ;
 int i_APCI1710_WriteTimerValue (struct comedi_device*,unsigned char,unsigned char,unsigned int) ;
 int printk (char*) ;

int i_APCI1710_InsnBitsTimer(struct comedi_device *dev, struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 unsigned char b_BitsType;
 int i_ReturnValue = 0;
 b_BitsType = data[0];

 printk("\n82X54");

 switch (b_BitsType) {
 case 129:
  i_ReturnValue = i_APCI1710_ReadTimerValue(dev,
         (unsigned char)CR_AREF(insn->chanspec),
         (unsigned char)CR_CHAN(insn->chanspec),
         (unsigned int *) &data[0]);
  break;

 case 131:
  i_ReturnValue = i_APCI1710_GetTimerOutputLevel(dev,
              (unsigned char)CR_AREF(insn->chanspec),
              (unsigned char)CR_CHAN(insn->chanspec),
              (unsigned char *) &data[0]);
  break;

 case 130:
  i_ReturnValue = i_APCI1710_GetTimerProgressStatus(dev,
          (unsigned char)CR_AREF(insn->chanspec),
          (unsigned char)CR_CHAN(insn->chanspec),
          (unsigned char *)&data[0]);
  break;

 case 128:
  i_ReturnValue = i_APCI1710_WriteTimerValue(dev,
          (unsigned char)CR_AREF(insn->chanspec),
          (unsigned char)CR_CHAN(insn->chanspec),
          (unsigned int)data[1]);

  break;

 default:
  printk("Bits Config Parameter Wrong\n");
  i_ReturnValue = -1;
 }

 if (i_ReturnValue >= 0)
  i_ReturnValue = insn->n;
 return i_ReturnValue;
}
