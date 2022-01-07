
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ iobase; TYPE_1__* ps_BoardInfo; } ;
struct TYPE_3__ {unsigned char i_NbrDiChannel; } ;


 scalar_t__ CR_CHAN (int ) ;
 TYPE_2__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int printk (char*) ;

int i_APCI3XXX_InsnReadDigitalInput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Channel = (unsigned char) CR_CHAN(insn->chanspec);
 unsigned int dw_Temp = 0;





 if (b_Channel <= devpriv->ps_BoardInfo->i_NbrDiChannel) {




  if (insn->n >= 1) {
   dw_Temp = inl(devpriv->iobase + 32);
   *data = (dw_Temp >> b_Channel) & 1;
  } else {




   printk("Buffer size error\n");
   i_ReturnValue = -101;
  }
 } else {




  printk("Channel selection error\n");
  i_ReturnValue = -3;
 }

 return i_ReturnValue;
}
