
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
struct TYPE_3__ {unsigned char i_NbrDoChannel; } ;


 unsigned char CR_CHAN (int ) ;
 TYPE_2__* devpriv ;
 unsigned int inl (scalar_t__) ;
 int printk (char*) ;

int i_APCI3XXX_InsnReadDigitalOutput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Channel = CR_CHAN(insn->chanspec);
 unsigned int dw_Status = 0;





 if (insn->n >= 1) {




  if (b_Channel < devpriv->ps_BoardInfo->i_NbrDoChannel) {




   dw_Status = inl(devpriv->iobase + 48);

   dw_Status = (dw_Status >> b_Channel) & 1;
   *data = dw_Status;
  } else {




   printk("Channel selection error\n");
   i_ReturnValue = -3;
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
