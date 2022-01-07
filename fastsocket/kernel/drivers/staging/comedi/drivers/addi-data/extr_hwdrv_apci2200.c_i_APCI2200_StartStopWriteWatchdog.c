
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI2200_WATCHDOG ;
 scalar_t__ APCI2200_WATCHDOG_ENABLEDISABLE ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;
 int printk (char*) ;

int i_APCI2200_StartStopWriteWatchdog(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 switch (data[0]) {
 case 0:
  outw(0x0, devpriv->iobase + APCI2200_WATCHDOG + APCI2200_WATCHDOG_ENABLEDISABLE);
  break;
 case 1:
  outw(0x0001,
   devpriv->iobase + APCI2200_WATCHDOG +
   APCI2200_WATCHDOG_ENABLEDISABLE);
  break;
 case 2:
  outw(0x0201,
   devpriv->iobase + APCI2200_WATCHDOG +
   APCI2200_WATCHDOG_ENABLEDISABLE);
  break;
 default:
  printk("\nSpecified functionality does not exist\n");
  return -EINVAL;
 }
 return insn->n;
}
