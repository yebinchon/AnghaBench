
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
 int printk (char*) ;

int i_APCI3XXX_InsnBitsDigitalInput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned int dw_Temp = 0;





 if (insn->n >= 1) {
  dw_Temp = inl(devpriv->iobase + 32);
  *data = dw_Temp & 0xf;
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
