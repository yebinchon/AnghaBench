
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ b_InterruptMode; scalar_t__ iobase; } ;


 scalar_t__ APCI3501_ANALOG_OUTPUT ;
 scalar_t__ APCI3501_AO_PROG ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ MODE1 ;
 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI3501_WriteAnalogOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ul_Command1 = 0, ul_Channel_no, ul_Polarity, ul_DAC_Ready = 0;;

 ul_Channel_no = CR_CHAN(insn->chanspec);

 if (devpriv->b_InterruptMode == MODE1) {
  ul_Polarity = 0x80000000;
  if ((*data < 0) || (*data > 16384)) {
   printk("\nIn WriteAnalogOutput :: Not Valid Data\n");
  }

 }
 else {
  ul_Polarity = 0;
  if ((*data < 0) || (*data > 8192)) {
   printk("\nIn WriteAnalogOutput :: Not Valid Data\n");
  }

 }

 if ((ul_Channel_no < 0) || (ul_Channel_no > 7)) {
  printk("\nIn WriteAnalogOutput :: Not Valid Channel\n");
 }

 ul_DAC_Ready = inl(devpriv->iobase + APCI3501_ANALOG_OUTPUT);

 while (ul_DAC_Ready == 0) {
  ul_DAC_Ready = inl(devpriv->iobase + APCI3501_ANALOG_OUTPUT);
  ul_DAC_Ready = (ul_DAC_Ready >> 8) & 1;
 }

 if (ul_DAC_Ready) {

  ul_Command1 =
   (unsigned int) ((unsigned int) (ul_Channel_no & 0xFF) |
   (unsigned int) ((*data << 0x8) & 0x7FFFFF00L) |
   (unsigned int) (ul_Polarity));
  outl(ul_Command1,
   devpriv->iobase + APCI3501_ANALOG_OUTPUT +
   APCI3501_AO_PROG);
 }

 return insn->n;
}
