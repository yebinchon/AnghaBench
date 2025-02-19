
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI2032_DIGITAL_OP_WATCHDOG ;
 scalar_t__ APCI2032_TCW_PROG ;
 scalar_t__ APCI2032_TCW_RELOAD_VALUE ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 int outl (unsigned int,scalar_t__) ;
 int printk (char*) ;

int i_APCI2032_ConfigWatchdog(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 if (data[0] == 0) {

  outl(0x0,
   devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG +
   APCI2032_TCW_PROG);

  outl(data[1],
   devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG +
   APCI2032_TCW_RELOAD_VALUE);
 } else {
  printk("\nThe input parameters are wrong\n");
  return -EINVAL;
 }

 return insn->n;
}
