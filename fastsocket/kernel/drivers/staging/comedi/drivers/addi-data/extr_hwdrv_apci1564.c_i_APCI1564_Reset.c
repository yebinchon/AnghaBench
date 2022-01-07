
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; scalar_t__ i_IobaseAmcc; scalar_t__ b_DigitalOutputRegister; } ;


 scalar_t__ APCI1564_COUNTER1 ;
 scalar_t__ APCI1564_COUNTER2 ;
 scalar_t__ APCI1564_COUNTER3 ;
 scalar_t__ APCI1564_COUNTER4 ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE1 ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE2 ;
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_STATUS ;
 scalar_t__ APCI1564_DIGITAL_IP_IRQ ;
 scalar_t__ APCI1564_DIGITAL_OP ;
 scalar_t__ APCI1564_DIGITAL_OP_INTERRUPT ;
 scalar_t__ APCI1564_DIGITAL_OP_WATCHDOG ;
 scalar_t__ APCI1564_TCW_PROG ;
 scalar_t__ APCI1564_TCW_RELOAD_VALUE ;
 scalar_t__ APCI1564_TIMER ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 scalar_t__ ui_Type ;

int i_APCI1564_Reset(struct comedi_device *dev)
{
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP_IRQ);
 inl(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP_INTERRUPT_STATUS);
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP_INTERRUPT_MODE1);
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP_INTERRUPT_MODE2);
 devpriv->b_DigitalOutputRegister = 0;
 ui_Type = 0;
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP);
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP_INTERRUPT);
 outl(0x0,
  devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP_WATCHDOG +
  APCI1564_TCW_RELOAD_VALUE);
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_TIMER);
 outl(0x0, devpriv->i_IobaseAmcc + APCI1564_TIMER + APCI1564_TCW_PROG);

 outl(0x0, devpriv->iobase + APCI1564_COUNTER1 + APCI1564_TCW_PROG);
 outl(0x0, devpriv->iobase + APCI1564_COUNTER2 + APCI1564_TCW_PROG);
 outl(0x0, devpriv->iobase + APCI1564_COUNTER3 + APCI1564_TCW_PROG);
 outl(0x0, devpriv->iobase + APCI1564_COUNTER4 + APCI1564_TCW_PROG);
 return 0;
}
