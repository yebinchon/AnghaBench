
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAddon; scalar_t__ iobase; } ;


 scalar_t__ APCI2016_DIGITAL_OP ;
 scalar_t__ APCI2016_WATCHDOG_ENABLEDISABLE ;
 scalar_t__ APCI2016_WATCHDOG_RELOAD_VALUE ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;

int i_APCI2016_Reset(struct comedi_device *dev)
{
 outw(0x0, devpriv->iobase + APCI2016_DIGITAL_OP);
 outw(0x0, devpriv->i_IobaseAddon + APCI2016_WATCHDOG_ENABLEDISABLE);
 outw(0x0, devpriv->i_IobaseAddon + APCI2016_WATCHDOG_RELOAD_VALUE);
 outw(0x0, devpriv->i_IobaseAddon + APCI2016_WATCHDOG_RELOAD_VALUE + 2);
 return 0;
}
