
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
 scalar_t__ APCI2032_TCW_TRIG_STATUS ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;

int i_APCI2032_ReadWatchdog(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{

 data[0] =
  inl(devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG +
  APCI2032_TCW_TRIG_STATUS) & 0x1;
 return insn->n;
}
