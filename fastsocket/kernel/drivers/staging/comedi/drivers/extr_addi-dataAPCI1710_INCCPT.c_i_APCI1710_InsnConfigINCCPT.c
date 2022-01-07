
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int tsk_Current; } ;
 int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 int current ;
 TYPE_1__* devpriv ;
 int i_APCI1710_CounterAutoTest (struct comedi_device*,unsigned char*) ;
 int i_APCI1710_InitCompareLogic (struct comedi_device*,int ,unsigned int) ;
 int i_APCI1710_InitCounter (struct comedi_device*,int ,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int i_APCI1710_InitExternalStrobe (struct comedi_device*,int ,unsigned char,unsigned char) ;
 int i_APCI1710_InitFrequencyMeasurement (struct comedi_device*,int ,unsigned char,unsigned char,unsigned int,unsigned int*) ;
 int i_APCI1710_InitIndex (struct comedi_device*,int ,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int i_APCI1710_InitReference (struct comedi_device*,int ,unsigned char) ;
 int printk (char*) ;

int i_APCI1710_InsnConfigINCCPT(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_ConfigType;
 int i_ReturnValue = 0;
 ui_ConfigType = CR_CHAN(insn->chanspec);

 printk("\nINC_CPT");

 devpriv->tsk_Current = current;
 switch (ui_ConfigType) {
 case 132:
  i_ReturnValue = i_APCI1710_InitCounter(dev,
   CR_AREF(insn->chanspec),
   (unsigned char) data[0],
   (unsigned char) data[1],
   (unsigned char) data[2], (unsigned char) data[3], (unsigned char) data[4]);
  break;

 case 134:
  i_ReturnValue = i_APCI1710_CounterAutoTest(dev,
   (unsigned char *) &data[0]);
  break;

 case 129:
  i_ReturnValue = i_APCI1710_InitIndex(dev,
   CR_AREF(insn->chanspec),
   (unsigned char) data[0],
   (unsigned char) data[1], (unsigned char) data[2], (unsigned char) data[3]);
  break;

 case 128:
  i_ReturnValue = i_APCI1710_InitReference(dev,
   CR_AREF(insn->chanspec), (unsigned char) data[0]);
  break;

 case 131:
  i_ReturnValue = i_APCI1710_InitExternalStrobe(dev,
   CR_AREF(insn->chanspec),
   (unsigned char) data[0], (unsigned char) data[1]);
  break;

 case 133:
  i_ReturnValue = i_APCI1710_InitCompareLogic(dev,
   CR_AREF(insn->chanspec), (unsigned int) data[0]);
  break;

 case 130:
  i_ReturnValue = i_APCI1710_InitFrequencyMeasurement(dev,
   CR_AREF(insn->chanspec),
   (unsigned char) data[0],
   (unsigned char) data[1], (unsigned int) data[2], (unsigned int *) &data[0]);
  break;

 default:
  printk("Insn Config : Config Parameter Wrong\n");

 }

 if (i_ReturnValue >= 0)
  i_ReturnValue = insn->n;
 return i_ReturnValue;
}
