
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ b_SingelDiff; unsigned char b_EocEosInterrupt; int ui_AiNbrofChannels; scalar_t__ dw_AiBase; TYPE_1__* ps_BoardInfo; scalar_t__ b_AiInitialisation; } ;
struct TYPE_3__ {unsigned char i_NbrAiChannel; unsigned char i_NbrAiChannelDiff; } ;


 scalar_t__ APCI3XXX_DIFF ;
 scalar_t__ APCI3XXX_SINGLE ;
 scalar_t__ CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 TYPE_2__* devpriv ;
 scalar_t__ i_APCI3XXX_TestConversionStarted (struct comedi_device*) ;
 int printk (char*,...) ;
 unsigned int readl (void*) ;
 int writel (int,void*) ;

int i_APCI3XXX_InsnReadAnalogInput(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = insn->n;
 unsigned char b_Configuration = (unsigned char) CR_RANGE(insn->chanspec);
 unsigned char b_Channel = (unsigned char) CR_CHAN(insn->chanspec);
 unsigned int dw_Temp = 0;
 unsigned int dw_Configuration = 0;
 unsigned int dw_AcquisitionCpt = 0;
 unsigned char b_Interrupt = 0;





 if (devpriv->b_AiInitialisation) {




  if (((b_Channel < devpriv->ps_BoardInfo->i_NbrAiChannel)
    && (devpriv->b_SingelDiff == APCI3XXX_SINGLE))
   || ((b_Channel < devpriv->ps_BoardInfo->
     i_NbrAiChannelDiff)
    && (devpriv->b_SingelDiff == APCI3XXX_DIFF))) {




   if (b_Configuration > 7) {




    i_ReturnValue = -4;
    printk("Channel %d range %d selection error\n",
     b_Channel, b_Configuration);
   }
  } else {




   i_ReturnValue = -3;
   printk("Channel %d selection error\n", b_Channel);
  }





  if (i_ReturnValue >= 0) {




   if ((b_Interrupt != 0) || ((b_Interrupt == 0)
     && (insn->n >= 1))) {




    if (i_APCI3XXX_TestConversionStarted(dev) == 0) {




     writel(0x10000UL,
      (void *)(devpriv->dw_AiBase +
       12));





     dw_Temp =
      readl((void *)(devpriv->
       dw_AiBase + 4));
     dw_Temp = dw_Temp & 0xFFFFFEF0UL;





     writel(dw_Temp,
      (void *)(devpriv->dw_AiBase +
       4));





     dw_Configuration =
      (b_Configuration & 3) |
      ((unsigned int) (b_Configuration >> 2)
      << 6) | ((unsigned int) devpriv->
      b_SingelDiff << 7);





     writel(dw_Configuration,
      (void *)(devpriv->dw_AiBase +
       0));





     writel(dw_Temp | 0x100UL,
      (void *)(devpriv->dw_AiBase +
       4));
     writel((unsigned int) b_Channel,
      (void *)(devpriv->dw_AiBase +
       0));





     writel(dw_Temp,
      (void *)(devpriv->dw_AiBase +
       4));





     writel(1,
      (void *)(devpriv->dw_AiBase +
       48));





     devpriv->b_EocEosInterrupt =
      b_Interrupt;





     devpriv->ui_AiNbrofChannels = 1;





     if (b_Interrupt == 0) {
      for (dw_AcquisitionCpt = 0;
       dw_AcquisitionCpt <
       insn->n;
       dw_AcquisitionCpt++) {




       writel(0x80000UL,
        (void *)
        (devpriv->
         dw_AiBase
         + 8));





       do {
        dw_Temp =
         readl(
         (void *)
         (devpriv->
          dw_AiBase
          +
          20));
        dw_Temp =
         dw_Temp
         & 1;
       } while (dw_Temp != 1);





       data[dw_AcquisitionCpt]
        =
        (unsigned int)
        readl((void
         *)
        (devpriv->
         dw_AiBase
         + 28));
      }
     } else {




      writel(0x180000UL,
       (void *)(devpriv->
        dw_AiBase + 8));
     }
    } else {




     printk("Any conversion started\n");
     i_ReturnValue = -10;
    }
   } else {




    printk("Buffer size error\n");
    i_ReturnValue = -101;
   }
  }
 } else {




  printk("Operating mode not configured\n");
  i_ReturnValue = -1;
 }
 return i_ReturnValue;
}
