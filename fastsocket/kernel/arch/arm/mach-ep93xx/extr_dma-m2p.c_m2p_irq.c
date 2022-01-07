
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m2p_channel {int lock; int * buffer_next; int * buffer_xfer; scalar_t__ base; struct ep93xx_dma_m2p_client* client; } ;
struct ep93xx_dma_m2p_client {int cookie; int (* buffer_started ) (int ,int *) ;int (* buffer_finished ) (int ,int *,int ,int) ;} ;
typedef int irqreturn_t ;


 int BUG () ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFB_IRQ_EN ;
 int M2P_CONTROL_STALL_IRQ_EN ;
 scalar_t__ M2P_INTERRUPT ;
 int M2P_INTERRUPT_ERROR ;
 int M2P_INTERRUPT_NFB ;
 int M2P_INTERRUPT_STALL ;




 int choose_buffer_next (struct m2p_channel*) ;
 int choose_buffer_xfer (struct m2p_channel*) ;
 int m2p_channel_state (struct m2p_channel*) ;
 int m2p_set_control (struct m2p_channel*,int) ;
 int pr_crit (char*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,int *,int ,int) ;
 int stub2 (int ,int *,int ,int) ;
 int stub3 (int ,int *) ;
 int stub4 (int ,int *,int ,int) ;
 int stub5 (int ,int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t m2p_irq(int irq, void *dev_id)
{
 struct m2p_channel *ch = dev_id;
 struct ep93xx_dma_m2p_client *cl;
 u32 irq_status, v;
 int error = 0;

 cl = ch->client;

 spin_lock(&ch->lock);
 irq_status = readl(ch->base + M2P_INTERRUPT);

 if (irq_status & M2P_INTERRUPT_ERROR) {
  writel(M2P_INTERRUPT_ERROR, ch->base + M2P_INTERRUPT);
  error = 1;
 }

 if ((irq_status & (M2P_INTERRUPT_STALL | M2P_INTERRUPT_NFB)) == 0) {
  spin_unlock(&ch->lock);
  return IRQ_NONE;
 }

 switch (m2p_channel_state(ch)) {
 case 131:
  pr_crit("m2p_irq: dma interrupt without a dma buffer\n");
  BUG();
  break;

 case 128:
  cl->buffer_finished(cl->cookie, ch->buffer_xfer, 0, error);
  if (ch->buffer_next != ((void*)0)) {
   cl->buffer_finished(cl->cookie, ch->buffer_next,
         0, error);
  }
  choose_buffer_xfer(ch);
  choose_buffer_next(ch);
  if (ch->buffer_xfer != ((void*)0))
   cl->buffer_started(cl->cookie, ch->buffer_xfer);
  break;

 case 129:
  cl->buffer_finished(cl->cookie, ch->buffer_xfer, 0, error);
  ch->buffer_xfer = ch->buffer_next;
  choose_buffer_next(ch);
  cl->buffer_started(cl->cookie, ch->buffer_xfer);
  break;

 case 130:
  pr_crit("m2p_irq: dma interrupt while next\n");
  BUG();
  break;
 }

 v = readl(ch->base + M2P_CONTROL) & ~(M2P_CONTROL_STALL_IRQ_EN |
           M2P_CONTROL_NFB_IRQ_EN);
 if (ch->buffer_xfer != ((void*)0))
  v |= M2P_CONTROL_STALL_IRQ_EN;
 if (ch->buffer_next != ((void*)0))
  v |= M2P_CONTROL_NFB_IRQ_EN;
 m2p_set_control(ch, v);

 spin_unlock(&ch->lock);
 return IRQ_HANDLED;
}
