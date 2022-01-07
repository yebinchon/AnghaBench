
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned short us_OutputRegister; scalar_t__ b_ModeSelectRegister; scalar_t__ b_ExttrigEnable; scalar_t__ b_Timer2Interrupt; scalar_t__ b_Timer2Mode; scalar_t__ b_OutputMemoryStatus; scalar_t__ ui_EocEosConversionTime; int b_InterruptMode; void* b_EocEosInterrupt; void* b_AiCyclicAcquisition; } ;


 int APCI3120_ANALOG_OP_CHANNEL_1 ;
 int APCI3120_ANALOG_OP_CHANNEL_2 ;
 int APCI3120_ANALOG_OP_CHANNEL_3 ;
 int APCI3120_ANALOG_OP_CHANNEL_4 ;
 int APCI3120_ANALOG_OP_CHANNEL_5 ;
 int APCI3120_ANALOG_OP_CHANNEL_6 ;
 int APCI3120_ANALOG_OP_CHANNEL_7 ;
 int APCI3120_ANALOG_OP_CHANNEL_8 ;
 scalar_t__ APCI3120_ANALOG_OUTPUT_1 ;
 scalar_t__ APCI3120_ANALOG_OUTPUT_2 ;
 void* APCI3120_DISABLE ;
 int APCI3120_EOC_MODE ;
 scalar_t__ APCI3120_RD_STATUS ;
 scalar_t__ APCI3120_RESET_FIFO ;
 scalar_t__ APCI3120_SEQ_RAM_ADDRESS ;
 scalar_t__ APCI3120_WRITE_MODE_SELECT ;
 scalar_t__ APCI3120_WR_ADDRESS ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int udelay (int) ;

int i_APCI3120_Reset(struct comedi_device *dev)
{
 unsigned int i;
 unsigned short us_TmpValue;

 devpriv->b_AiCyclicAcquisition = APCI3120_DISABLE;
 devpriv->b_EocEosInterrupt = APCI3120_DISABLE;
 devpriv->b_InterruptMode = APCI3120_EOC_MODE;
 devpriv->ui_EocEosConversionTime = 0;
 devpriv->b_OutputMemoryStatus = 0;


 devpriv->b_Timer2Mode = 0;
 devpriv->b_Timer2Interrupt = 0;
 devpriv->b_ExttrigEnable = 0;


 devpriv->b_ModeSelectRegister = 0;
 outb(devpriv->b_ModeSelectRegister,
  dev->iobase + APCI3120_WRITE_MODE_SELECT);


 devpriv->us_OutputRegister = 0;
 outw(devpriv->us_OutputRegister, dev->iobase + APCI3120_WR_ADDRESS);





 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_1, dev->iobase + APCI3120_ANALOG_OUTPUT_1);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_2, dev->iobase + APCI3120_ANALOG_OUTPUT_1);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_3, dev->iobase + APCI3120_ANALOG_OUTPUT_1);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_4, dev->iobase + APCI3120_ANALOG_OUTPUT_1);

 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_5, dev->iobase + APCI3120_ANALOG_OUTPUT_2);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_6, dev->iobase + APCI3120_ANALOG_OUTPUT_2);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_7, dev->iobase + APCI3120_ANALOG_OUTPUT_2);
 outw(8191 | APCI3120_ANALOG_OP_CHANNEL_8, dev->iobase + APCI3120_ANALOG_OUTPUT_2);




 udelay(10);

 inw(dev->iobase + 0);
 inb(dev->iobase + APCI3120_RESET_FIFO);
 inw(dev->iobase + APCI3120_RD_STATUS);


 for (i = 0; i < 16; i++) {
  us_TmpValue = i << 8;
  outw(us_TmpValue, dev->iobase + APCI3120_SEQ_RAM_ADDRESS);
 }
 return 0;
}
