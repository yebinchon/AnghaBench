
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 TYPE_1__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI035_ReadAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_CommandRegister = 0;



 ui_CommandRegister = 0x80000;



 outl(ui_CommandRegister, devpriv->iobase + 128 + 8);




 data[0] = inl(devpriv->iobase + 128 + 28);
 return insn->n;
}
