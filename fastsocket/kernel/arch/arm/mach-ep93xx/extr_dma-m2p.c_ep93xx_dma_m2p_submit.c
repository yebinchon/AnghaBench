
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m2p_channel {int lock; int buffers_pending; struct ep93xx_dma_buffer* buffer_next; struct ep93xx_dma_buffer* buffer_xfer; scalar_t__ base; } ;
struct ep93xx_dma_m2p_client {int cookie; int (* buffer_started ) (int ,struct ep93xx_dma_buffer*) ;struct m2p_channel* channel; } ;
struct ep93xx_dma_buffer {int list; } ;


 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFB_IRQ_EN ;
 int M2P_CONTROL_STALL_IRQ_EN ;
 int feed_buf (struct m2p_channel*,struct ep93xx_dma_buffer*) ;
 int list_add_tail (int *,int *) ;
 int m2p_set_control (struct m2p_channel*,int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct ep93xx_dma_buffer*) ;

void ep93xx_dma_m2p_submit(struct ep93xx_dma_m2p_client *cl,
      struct ep93xx_dma_buffer *buf)
{
 struct m2p_channel *ch = cl->channel;
 unsigned long flags;
 u32 v;

 spin_lock_irqsave(&ch->lock, flags);
 v = readl(ch->base + M2P_CONTROL);
 if (ch->buffer_xfer == ((void*)0)) {
  ch->buffer_xfer = buf;
  feed_buf(ch, buf);
  cl->buffer_started(cl->cookie, buf);

  v |= M2P_CONTROL_STALL_IRQ_EN;
  m2p_set_control(ch, v);

 } else if (ch->buffer_next == ((void*)0)) {
  ch->buffer_next = buf;
  feed_buf(ch, buf);

  v |= M2P_CONTROL_NFB_IRQ_EN;
  m2p_set_control(ch, v);
 } else {
  list_add_tail(&buf->list, &ch->buffers_pending);
 }
 spin_unlock_irqrestore(&ch->lock, flags);
}
