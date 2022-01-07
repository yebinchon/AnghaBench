
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct dma_async_tx_descriptor* parent; int lock; struct dma_chan* chan; struct dma_async_tx_descriptor* next; int callback_param; int callback; } ;
struct async_submit_ctl {int flags; int cb_param; int cb_fn; struct dma_async_tx_descriptor* depend_tx; } ;
typedef enum submit_disposition { ____Placeholder_submit_disposition } submit_disposition ;


 int ASYNC_TX_ACK ;



 int BUG_ON (int ) ;
 int async_tx_ack (struct dma_async_tx_descriptor*) ;
 int async_tx_channel_switch (struct dma_async_tx_descriptor*,struct dma_async_tx_descriptor*) ;
 scalar_t__ async_tx_test_ack (struct dma_async_tx_descriptor*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct dma_async_tx_descriptor*) ;
 int stub2 (struct dma_async_tx_descriptor*) ;

void
async_tx_submit(struct dma_chan *chan, struct dma_async_tx_descriptor *tx,
  struct async_submit_ctl *submit)
{
 struct dma_async_tx_descriptor *depend_tx = submit->depend_tx;

 tx->callback = submit->cb_fn;
 tx->callback_param = submit->cb_param;

 if (depend_tx) {
  enum submit_disposition s;







  BUG_ON(async_tx_test_ack(depend_tx) || depend_tx->next ||
         tx->parent);




  spin_lock_bh(&depend_tx->lock);
  if (depend_tx->parent) {




   if (depend_tx->chan == chan) {
    tx->parent = depend_tx;
    depend_tx->next = tx;
    s = 128;
   } else
    s = 130;
  } else {



   if (depend_tx->chan == chan)
    s = 129;
   else
    s = 130;
  }
  spin_unlock_bh(&depend_tx->lock);

  switch (s) {
  case 128:
   break;
  case 130:
   async_tx_channel_switch(depend_tx, tx);
   break;
  case 129:
   tx->parent = ((void*)0);
   tx->tx_submit(tx);
   break;
  }
 } else {
  tx->parent = ((void*)0);
  tx->tx_submit(tx);
 }

 if (submit->flags & ASYNC_TX_ACK)
  async_tx_ack(tx);

 if (depend_tx)
  async_tx_ack(depend_tx);
}
