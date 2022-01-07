
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cookie; } ;
struct txx9dmac_desc {int desc_node; TYPE_1__ txd; } ;
struct txx9dmac_chan {int lock; int queue; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int chan2dev (int ) ;
 int dev_vdbg (int ,char*,int ,struct txx9dmac_desc*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct txx9dmac_chan* to_txx9dmac_chan (int ) ;
 struct txx9dmac_desc* txd_to_txx9dmac_desc (struct dma_async_tx_descriptor*) ;
 int txx9dmac_assign_cookie (struct txx9dmac_chan*,struct txx9dmac_desc*) ;

__attribute__((used)) static dma_cookie_t txx9dmac_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct txx9dmac_desc *desc = txd_to_txx9dmac_desc(tx);
 struct txx9dmac_chan *dc = to_txx9dmac_chan(tx->chan);
 dma_cookie_t cookie;

 spin_lock_bh(&dc->lock);
 cookie = txx9dmac_assign_cookie(dc, desc);

 dev_vdbg(chan2dev(tx->chan), "tx_submit: queued %u %p\n",
   desc->txd.cookie, desc);

 list_add_tail(&desc->desc_node, &dc->queue);
 spin_unlock_bh(&dc->lock);

 return cookie;
}
