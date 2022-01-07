
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int b_EocEosInterrupt; unsigned char ui_AiNbrofChannels; unsigned int* ui_AiReadData; int tsk_Current; scalar_t__ dw_AiBase; } ;


 int SIGIO ;
 TYPE_1__* devpriv ;
 unsigned int readl (void*) ;
 int send_sig (int ,int ,int ) ;
 int writel (unsigned int,void*) ;

void v_APCI3XXX_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned char b_CopyCpt = 0;
 unsigned int dw_Status = 0;





 dw_Status = readl((void *)(devpriv->dw_AiBase + 16));
 if ( (dw_Status & 0x2UL) == 0x2UL) {




  writel(dw_Status, (void *)(devpriv->dw_AiBase + 16));





  if (devpriv->b_EocEosInterrupt == 1) {




   for (b_CopyCpt = 0;
    b_CopyCpt < devpriv->ui_AiNbrofChannels;
    b_CopyCpt++) {
    devpriv->ui_AiReadData[b_CopyCpt] =
     (unsigned int) readl((void *)(devpriv->
      dw_AiBase + 28));
   }





   devpriv->b_EocEosInterrupt = 2;





   send_sig(SIGIO, devpriv->tsk_Current, 0);
  }
 }
}
