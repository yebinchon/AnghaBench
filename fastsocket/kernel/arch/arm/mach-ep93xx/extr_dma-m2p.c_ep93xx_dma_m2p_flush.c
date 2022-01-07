
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int buffers_pending; int * buffer_next; int * buffer_xfer; scalar_t__ next_slot; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; } ;


 int INIT_LIST_HEAD (int *) ;
 int channel_disable (struct m2p_channel*) ;
 int channel_enable (struct m2p_channel*) ;

void ep93xx_dma_m2p_flush(struct ep93xx_dma_m2p_client *cl)
{
 struct m2p_channel *ch = cl->channel;

 channel_disable(ch);
 ch->next_slot = 0;
 ch->buffer_xfer = ((void*)0);
 ch->buffer_next = ((void*)0);
 INIT_LIST_HEAD(&ch->buffers_pending);
 channel_enable(ch);
}
