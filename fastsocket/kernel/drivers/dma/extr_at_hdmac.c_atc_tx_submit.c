
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {int chan; } ;
struct at_dma_chan {int lock; int queue; int active_list; } ;
struct TYPE_2__ {int cookie; } ;
struct at_desc {int desc_node; TYPE_1__ txd; } ;
typedef int dma_cookie_t ;


 int atc_assign_cookie (struct at_dma_chan*,struct at_desc*) ;
 int atc_dostart (struct at_dma_chan*,struct at_desc*) ;
 int chan2dev (int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct at_dma_chan* to_at_dma_chan (int ) ;
 struct at_desc* txd_to_at_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t atc_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct at_desc *desc = txd_to_at_desc(tx);
 struct at_dma_chan *atchan = to_at_dma_chan(tx->chan);
 dma_cookie_t cookie;

 spin_lock_bh(&atchan->lock);
 cookie = atc_assign_cookie(atchan, desc);

 if (list_empty(&atchan->active_list)) {
  dev_vdbg(chan2dev(tx->chan), "tx_submit: started %u\n",
    desc->txd.cookie);
  atc_dostart(atchan, desc);
  list_add_tail(&desc->desc_node, &atchan->active_list);
 } else {
  dev_vdbg(chan2dev(tx->chan), "tx_submit: queued %u\n",
    desc->txd.cookie);
  list_add_tail(&desc->desc_node, &atchan->queue);
 }

 spin_unlock_bh(&atchan->lock);

 return cookie;
}
