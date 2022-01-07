
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; scalar_t__ b_DigitalOutputRegister; } ;


 scalar_t__ APCI2032_DIGITAL_OP ;
 scalar_t__ APCI2032_DIGITAL_OP_INTERRUPT ;
 scalar_t__ APCI2032_DIGITAL_OP_WATCHDOG ;
 scalar_t__ APCI2032_TCW_PROG ;
 scalar_t__ APCI2032_TCW_RELOAD_VALUE ;
 TYPE_1__* devpriv ;
 int outl (int,scalar_t__) ;
 scalar_t__ ui_Type ;

int i_APCI2032_Reset(struct comedi_device *dev)
{
 devpriv->b_DigitalOutputRegister = 0;
 ui_Type = 0;
 outl(0x0, devpriv->iobase + APCI2032_DIGITAL_OP);
 outl(0x0, devpriv->iobase + APCI2032_DIGITAL_OP_INTERRUPT);
 outl(0x0, devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG + APCI2032_TCW_PROG);
 outl(0x0, devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG + APCI2032_TCW_RELOAD_VALUE);
 return 0;
}
