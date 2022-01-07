
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int * client; int irq; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; } ;


 int channel_disable (struct m2p_channel*) ;
 int free_irq (int ,struct m2p_channel*) ;

void ep93xx_dma_m2p_client_unregister(struct ep93xx_dma_m2p_client *cl)
{
 struct m2p_channel *ch = cl->channel;

 channel_disable(ch);
 free_irq(ch->irq, ch);
 ch->client = ((void*)0);
}
