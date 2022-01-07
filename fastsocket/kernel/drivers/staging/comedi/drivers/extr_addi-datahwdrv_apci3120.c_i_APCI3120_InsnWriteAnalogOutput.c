
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI3120_ANALOG_OUTPUT_1 ;
 scalar_t__ APCI3120_ANALOG_OUTPUT_2 ;
 scalar_t__ APCI3120_RD_STATUS ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 TYPE_1__* devpriv ;
 scalar_t__ inw (scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

int i_APCI3120_InsnWriteAnalogOutput(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int ui_Range, ui_Channel;
 unsigned short us_TmpValue;

 ui_Range = CR_RANGE(insn->chanspec);
 ui_Channel = CR_CHAN(insn->chanspec);


 if (ui_Range)
 {

  if (data[0] != 0)
   data[0] =
    ((((ui_Channel & 0x03) << 14) & 0xC000) | (1 <<
     13) | (data[0] + 8191));
  else
   data[0] =
    ((((ui_Channel & 0x03) << 14) & 0xC000) | (1 <<
     13) | 8192);

 } else
 {
  data[0] =
   ((((ui_Channel & 0x03) << 14) & 0xC000) | (0 << 13) |
   data[0]);

 }





 do
 {
  us_TmpValue =
   ((unsigned short) inw(devpriv->iobase +
    APCI3120_RD_STATUS)) & 0x0001;
 } while (us_TmpValue != 0x0001);

 if (ui_Channel <= 3)




  outw((unsigned short) data[0],
   devpriv->iobase + APCI3120_ANALOG_OUTPUT_1);
 else




  outw((unsigned short) data[0],
   devpriv->iobase + APCI3120_ANALOG_OUTPUT_2);

 return insn->n;
}
