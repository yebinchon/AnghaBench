
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_dma_chan {int lock; int queue; int active_list; } ;
struct TYPE_2__ {int cookie; } ;
struct dw_desc {int desc_node; TYPE_1__ txd; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int chan2dev (int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int dwc_assign_cookie (struct dw_dma_chan*,struct dw_desc*) ;
 int dwc_dostart (struct dw_dma_chan*,struct dw_desc*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct dw_dma_chan* to_dw_dma_chan (int ) ;
 struct dw_desc* txd_to_dw_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t dwc_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct dw_desc *desc = txd_to_dw_desc(tx);
 struct dw_dma_chan *dwc = to_dw_dma_chan(tx->chan);
 dma_cookie_t cookie;

 spin_lock_bh(&dwc->lock);
 cookie = dwc_assign_cookie(dwc, desc);






 if (list_empty(&dwc->active_list)) {
  dev_vdbg(chan2dev(tx->chan), "tx_submit: started %u\n",
    desc->txd.cookie);
  dwc_dostart(dwc, desc);
  list_add_tail(&desc->desc_node, &dwc->active_list);
 } else {
  dev_vdbg(chan2dev(tx->chan), "tx_submit: queued %u\n",
    desc->txd.cookie);

  list_add_tail(&desc->desc_node, &dwc->queue);
 }

 spin_unlock_bh(&dwc->lock);

 return cookie;
}
