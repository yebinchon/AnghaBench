
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int txd; int * buffer; struct efx_channel* channel; } ;
struct efx_rx_queue {int slow_fill; int rxd; int * buffer; } ;
struct efx_channel {struct efx_rx_queue rx_queue; struct efx_tx_queue* tx_queue; int eventq; int * napi_dev; } ;


 int EFX_TXQ_TYPES ;
 int GFP_KERNEL ;
 int efx_rx_slow_fill ;
 struct efx_channel* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static struct efx_channel *
efx_copy_channel(const struct efx_channel *old_channel)
{
 struct efx_channel *channel;
 struct efx_rx_queue *rx_queue;
 struct efx_tx_queue *tx_queue;
 int j;

 channel = kmalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ((void*)0);

 *channel = *old_channel;

 channel->napi_dev = ((void*)0);
 memset(&channel->eventq, 0, sizeof(channel->eventq));

 for (j = 0; j < EFX_TXQ_TYPES; j++) {
  tx_queue = &channel->tx_queue[j];
  if (tx_queue->channel)
   tx_queue->channel = channel;
  tx_queue->buffer = ((void*)0);
  memset(&tx_queue->txd, 0, sizeof(tx_queue->txd));
 }

 rx_queue = &channel->rx_queue;
 rx_queue->buffer = ((void*)0);
 memset(&rx_queue->rxd, 0, sizeof(rx_queue->rxd));
 setup_timer(&rx_queue->slow_fill, efx_rx_slow_fill,
      (unsigned long)rx_queue);

 return channel;
}
