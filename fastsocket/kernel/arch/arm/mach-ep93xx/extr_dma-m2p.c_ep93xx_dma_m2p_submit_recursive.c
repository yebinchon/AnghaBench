
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int buffers_pending; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; } ;
struct ep93xx_dma_buffer {int list; } ;


 int list_add_tail (int *,int *) ;

void ep93xx_dma_m2p_submit_recursive(struct ep93xx_dma_m2p_client *cl,
         struct ep93xx_dma_buffer *buf)
{
 struct m2p_channel *ch = cl->channel;

 list_add_tail(&buf->list, &ch->buffers_pending);
}
