
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI3120_RD_STATUS ;
 TYPE_1__* devpriv ;
 scalar_t__ inw (scalar_t__) ;

int i_APCI3120_InsnBitsDigitalInput(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ui_TmpValue;
 ui_TmpValue = (unsigned int) inw(devpriv->iobase + APCI3120_RD_STATUS);





 *data = (ui_TmpValue >> 8) & 0xf;

 return insn->n;
}
