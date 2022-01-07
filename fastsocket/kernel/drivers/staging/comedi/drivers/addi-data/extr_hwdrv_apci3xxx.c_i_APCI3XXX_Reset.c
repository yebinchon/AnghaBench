
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int irq; } ;
struct TYPE_2__ {scalar_t__ dw_AiBase; scalar_t__ b_EocEosInterrupt; } ;


 TYPE_1__* devpriv ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int readl (void*) ;
 int writel (int ,void*) ;

int i_APCI3XXX_Reset(struct comedi_device *dev)
{
 unsigned char b_Cpt = 0;





 disable_irq(dev->irq);





 devpriv->b_EocEosInterrupt = 0;





 writel(0, (void *)(devpriv->dw_AiBase + 8));





 writel(readl((void *)(devpriv->dw_AiBase + 16)),
  (void *)(devpriv->dw_AiBase + 16));





 readl((void *)(devpriv->dw_AiBase + 20));





 for (b_Cpt = 0; b_Cpt < 16; b_Cpt++) {
  readl((void *)(devpriv->dw_AiBase + 28));
 }





 enable_irq(dev->irq);

 return 0;
}
