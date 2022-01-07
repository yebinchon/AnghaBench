
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int us_OutputRegister; void* b_EocEosInterrupt; int b_InterruptMode; void* b_AiCyclicAcquisition; scalar_t__ ui_DmaActualBuffer; scalar_t__ b_AiContinuous; scalar_t__ ui_AiBufferPtr; scalar_t__ ui_AiActualScanPosition; scalar_t__ ui_AiActualScan; scalar_t__ i_IobaseAmcc; scalar_t__ i_IobaseAddon; } ;
struct TYPE_3__ {scalar_t__ cur_chan; } ;


 scalar_t__ AMCC_OP_REG_MCSR ;
 int APCI3120_ADD_ON_AGCSTS_HIGH ;
 int APCI3120_ADD_ON_AGCSTS_LOW ;
 void* APCI3120_DISABLE ;
 int APCI3120_DISABLE_ALL_INTERRUPT ;
 int APCI3120_DISABLE_ALL_TIMER ;
 int APCI3120_DISABLE_TIMER0 ;
 int APCI3120_DISABLE_TIMER1 ;
 int APCI3120_EOC_MODE ;
 scalar_t__ APCI3120_RD_STATUS ;
 scalar_t__ APCI3120_RESET_FIFO ;
 scalar_t__ APCI3120_WRITE_MODE_SELECT ;
 scalar_t__ APCI3120_WR_ADDRESS ;
 TYPE_2__* devpriv ;
 int i_APCI3120_ExttrigDisable (struct comedi_device*) ;
 int i_APCI3120_Reset (struct comedi_device*) ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;

int i_APCI3120_StopCyclicAcquisition(struct comedi_device *dev, struct comedi_subdevice *s)
{

 outw(0, devpriv->i_IobaseAddon + 4);


 outw(APCI3120_ADD_ON_AGCSTS_LOW, devpriv->i_IobaseAddon + 0);
 outw(0, devpriv->i_IobaseAddon + 2);
 outw(APCI3120_ADD_ON_AGCSTS_HIGH, devpriv->i_IobaseAddon + 0);
 outw(0, devpriv->i_IobaseAddon + 2);


 outl(0, devpriv->i_IobaseAmcc + AMCC_OP_REG_MCSR);
 i_APCI3120_ExttrigDisable(dev);

 devpriv->us_OutputRegister = 0;

 outw(devpriv->
  us_OutputRegister & APCI3120_DISABLE_TIMER0 &
  APCI3120_DISABLE_TIMER1, dev->iobase + APCI3120_WR_ADDRESS);

 outw(APCI3120_DISABLE_ALL_TIMER, dev->iobase + APCI3120_WR_ADDRESS);


 outb(APCI3120_DISABLE_ALL_INTERRUPT,
  dev->iobase + APCI3120_WRITE_MODE_SELECT);

 inb(dev->iobase + APCI3120_RESET_FIFO);
 inw(dev->iobase + APCI3120_RD_STATUS);
 devpriv->ui_AiActualScan = 0;
 devpriv->ui_AiActualScanPosition = 0;
 s->async->cur_chan = 0;
 devpriv->ui_AiBufferPtr = 0;
 devpriv->b_AiContinuous = 0;
 devpriv->ui_DmaActualBuffer = 0;

 devpriv->b_AiCyclicAcquisition = APCI3120_DISABLE;
 devpriv->b_InterruptMode = APCI3120_EOC_MODE;
 devpriv->b_EocEosInterrupt = APCI3120_DISABLE;
 i_APCI3120_Reset(dev);
 return 0;
}
