
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ APCI3120_RD_STATUS ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 TYPE_1__* devpriv ;
 scalar_t__ inw (scalar_t__) ;

int i_APCI3120_InsnReadDigitalInput(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int ui_Chan, ui_TmpValue;

 ui_Chan = CR_CHAN(insn->chanspec);


 if (ui_Chan >= 0 && ui_Chan <= 3) {
  ui_TmpValue = (unsigned int) inw(devpriv->iobase + APCI3120_RD_STATUS);





  *data = (ui_TmpValue >> (ui_Chan + 8)) & 1;

 } else {

  return -EINVAL;
 }
 return insn->n;

}
