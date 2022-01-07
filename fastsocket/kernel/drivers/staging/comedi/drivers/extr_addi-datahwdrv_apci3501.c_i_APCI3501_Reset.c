
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI3501_ANALOG_OUTPUT ;
 scalar_t__ APCI3501_AO_PROG ;
 scalar_t__ APCI3501_AO_VOLT_MODE ;
 scalar_t__ APCI3501_DIGITAL_OP ;
 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI3501_Reset(struct comedi_device *dev)
{
 int i_Count = 0, i_temp = 0;
 unsigned int ul_Command1 = 0, ul_Polarity, ul_DAC_Ready = 0;
 outl(0x0, devpriv->iobase + APCI3501_DIGITAL_OP);
 outl(1, devpriv->iobase + APCI3501_ANALOG_OUTPUT +
  APCI3501_AO_VOLT_MODE);

 ul_Polarity = 0x80000000;

 for (i_Count = 0; i_Count <= 7; i_Count++) {
  ul_DAC_Ready = inl(devpriv->iobase + APCI3501_ANALOG_OUTPUT);

  while (ul_DAC_Ready == 0) {
   ul_DAC_Ready =
    inl(devpriv->iobase + APCI3501_ANALOG_OUTPUT);
   ul_DAC_Ready = (ul_DAC_Ready >> 8) & 1;
  }

  if (ul_DAC_Ready) {

   ul_Command1 =
    (unsigned int) ((unsigned int) (i_Count & 0xFF) |
    (unsigned int) ((i_temp << 0x8) & 0x7FFFFF00L) |
    (unsigned int) (ul_Polarity));
   outl(ul_Command1,
    devpriv->iobase + APCI3501_ANALOG_OUTPUT +
    APCI3501_AO_PROG);
  }
 }

 return 0;
}
