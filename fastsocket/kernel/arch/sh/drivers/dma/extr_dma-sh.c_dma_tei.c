
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_channel {size_t chan; int wait_queue; } ;
typedef int irqreturn_t ;


 scalar_t__ CHCR ;
 int CHCR_DE ;
 int CHCR_IE ;
 int CHCR_TE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ctrl_inl (scalar_t__) ;
 int ctrl_outl (int,scalar_t__) ;
 scalar_t__* dma_base_addr ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t dma_tei(int irq, void *dev_id)
{
 struct dma_channel *chan = dev_id;
 u32 chcr;

 chcr = ctrl_inl(dma_base_addr[chan->chan] + CHCR);

 if (!(chcr & CHCR_TE))
  return IRQ_NONE;

 chcr &= ~(CHCR_IE | CHCR_DE);
 ctrl_outl(chcr, (dma_base_addr[chan->chan] + CHCR));

 wake_up(&chan->wait_queue);

 return IRQ_HANDLED;
}
