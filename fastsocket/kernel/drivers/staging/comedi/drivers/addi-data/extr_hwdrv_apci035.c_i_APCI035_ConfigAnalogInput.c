
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int tsk_Current; } ;


 int current ;
 TYPE_1__* devpriv ;
 int outl (int,scalar_t__) ;

int i_APCI035_ConfigAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 devpriv->tsk_Current = current;
 outl(0x200 | 0, devpriv->iobase + 128 + 0x4);
 outl(0, devpriv->iobase + 128 + 0);



 outl(0x300 | 0, devpriv->iobase + 128 + 0x4);
 outl((data[0] << 8), devpriv->iobase + 128 + 0);
 outl(0x200000UL, devpriv->iobase + 128 + 12);

 return insn->n;
}
