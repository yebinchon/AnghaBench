
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ dw_AiBase; TYPE_1__* ps_BoardInfo; } ;
struct TYPE_3__ {unsigned char i_NbrAoChannel; } ;


 scalar_t__ CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 TYPE_2__* devpriv ;
 int printk (char*,...) ;
 unsigned int readl (void*) ;
 int writel (unsigned int,void*) ;

int i_APCI3XXX_InsnWriteAnalogOutput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned char b_Range = (unsigned char) CR_RANGE(insn->chanspec);
 unsigned char b_Channel = (unsigned char) CR_CHAN(insn->chanspec);
 unsigned int dw_Status = 0;
 int i_ReturnValue = insn->n;





 if (insn->n >= 1) {




  if (b_Channel < devpriv->ps_BoardInfo->i_NbrAoChannel) {




   if (b_Range < 2) {




    writel(b_Range,
     (void *)(devpriv->dw_AiBase + 96));





    writel((data[0] << 8) | b_Channel,
     (void *)(devpriv->dw_AiBase + 100));





    do {
     dw_Status =
      readl((void *)(devpriv->
       dw_AiBase + 96));
    } while ((dw_Status & 0x100) != 0x100);
   } else {




    i_ReturnValue = -4;
    printk("Channel %d range %d selection error\n",
     b_Channel, b_Range);
   }
  } else {




   i_ReturnValue = -3;
   printk("Channel %d selection error\n", b_Channel);
  }
 } else {




  printk("Buffer size error\n");
  i_ReturnValue = -101;
 }

 return i_ReturnValue;
}
