
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;int lock; struct dma_async_tx_descriptor* next; struct dma_chan* chan; int * parent; } ;
struct TYPE_2__ {int (* device_issue_pending ) (struct dma_chan*) ;} ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 int stub2 (struct dma_chan*) ;

void dma_run_dependencies(struct dma_async_tx_descriptor *tx)
{
 struct dma_async_tx_descriptor *dep = tx->next;
 struct dma_async_tx_descriptor *dep_next;
 struct dma_chan *chan;

 if (!dep)
  return;


 tx->next = ((void*)0);
 chan = dep->chan;





 for (; dep; dep = dep_next) {
  spin_lock_bh(&dep->lock);
  dep->parent = ((void*)0);
  dep_next = dep->next;
  if (dep_next && dep_next->chan == chan)
   dep->next = ((void*)0);
  else
   dep_next = ((void*)0);
  spin_unlock_bh(&dep->lock);

  dep->tx_submit(dep);
 }

 chan->device->device_issue_pending(chan);
}
