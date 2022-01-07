
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int us_OutputRegister; } ;


 int APCI3120_ENABLE_EXT_TRIGGER ;
 scalar_t__ APCI3120_WR_ADDRESS ;
 TYPE_1__* devpriv ;
 int outw (int ,scalar_t__) ;

int i_APCI3120_ExttrigEnable(struct comedi_device *dev)
{

 devpriv->us_OutputRegister |= APCI3120_ENABLE_EXT_TRIGGER;
 outw(devpriv->us_OutputRegister, dev->iobase + APCI3120_WR_ADDRESS);
 return 0;
}
