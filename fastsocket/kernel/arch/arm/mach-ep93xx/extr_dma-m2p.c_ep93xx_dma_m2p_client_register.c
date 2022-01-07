
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int buffers_pending; int * buffer_next; int * buffer_xfer; scalar_t__ next_slot; struct ep93xx_dma_m2p_client* client; int irq; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; scalar_t__ name; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct m2p_channel*) ;
 int PTR_ERR (struct m2p_channel*) ;
 int channel_enable (struct m2p_channel*) ;
 struct m2p_channel* find_free_channel (struct ep93xx_dma_m2p_client*) ;
 int m2p_irq ;
 int request_irq (int ,int ,int ,char*,struct m2p_channel*) ;

int ep93xx_dma_m2p_client_register(struct ep93xx_dma_m2p_client *cl)
{
 struct m2p_channel *ch;
 int err;

 ch = find_free_channel(cl);
 if (IS_ERR(ch))
  return PTR_ERR(ch);

 err = request_irq(ch->irq, m2p_irq, 0, cl->name ? : "dma-m2p", ch);
 if (err)
  return err;

 ch->client = cl;
 ch->next_slot = 0;
 ch->buffer_xfer = ((void*)0);
 ch->buffer_next = ((void*)0);
 INIT_LIST_HEAD(&ch->buffers_pending);

 cl->channel = ch;

 channel_enable(ch);

 return 0;
}
