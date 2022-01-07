
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int b_InterruptMode; scalar_t__ iobase; } ;


 scalar_t__ APCI3501_ANALOG_OUTPUT ;
 scalar_t__ APCI3501_AO_VOLT_MODE ;
 int MODE0 ;
 int MODE1 ;
 TYPE_1__* devpriv ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI3501_ConfigAnalogOutput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 outl(data[0],
  devpriv->iobase + APCI3501_ANALOG_OUTPUT +
  APCI3501_AO_VOLT_MODE);

 if (data[0]) {
  devpriv->b_InterruptMode = MODE1;
 } else {
  devpriv->b_InterruptMode = MODE0;
 }
 return insn->n;
}
