
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAddon; } ;


 scalar_t__ APCI2016_WATCHDOG_ENABLEDISABLE ;
 scalar_t__ APCI2016_WATCHDOG_RELOAD_VALUE ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI2016_ConfigWatchdog(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{

 if (data[0] == 0) {

  outw(0x0,
   devpriv->i_IobaseAddon +
   APCI2016_WATCHDOG_ENABLEDISABLE);

  outw(data[1],
   devpriv->i_IobaseAddon +
   APCI2016_WATCHDOG_RELOAD_VALUE);
  data[1] = data[1] >> 16;
  outw(data[1],
   devpriv->i_IobaseAddon +
   APCI2016_WATCHDOG_RELOAD_VALUE + 2);
 } else {
  printk("\nThe input parameters are wrong\n");
 }
 return insn->n;
}
