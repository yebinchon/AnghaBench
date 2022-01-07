
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int lock; struct dma_chan* chan; } ;


 int spin_lock_init (int *) ;

void dma_async_tx_descriptor_init(struct dma_async_tx_descriptor *tx,
 struct dma_chan *chan)
{
 tx->chan = chan;
 spin_lock_init(&tx->lock);
}
