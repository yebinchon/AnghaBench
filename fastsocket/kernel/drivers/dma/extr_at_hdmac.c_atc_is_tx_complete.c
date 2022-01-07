
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int cookie; } ;
struct at_dma_chan {int lock; int completed_cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_SUCCESS ;
 int atc_cleanup_descriptors (struct at_dma_chan*) ;
 int chan2dev (struct dma_chan*) ;
 int dev_vdbg (int ,char*,int ,int ,int ) ;
 int dma_async_is_complete (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct at_dma_chan* to_at_dma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status
atc_is_tx_complete(struct dma_chan *chan,
  dma_cookie_t cookie,
  dma_cookie_t *done, dma_cookie_t *used)
{
 struct at_dma_chan *atchan = to_at_dma_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;
 enum dma_status ret;

 dev_vdbg(chan2dev(chan), "is_tx_complete: %d (d%d, u%d)\n",
   cookie, done ? *done : 0, used ? *used : 0);

 spin_lock_bh(&atchan->lock);

 last_complete = atchan->completed_cookie;
 last_used = chan->cookie;

 ret = dma_async_is_complete(cookie, last_complete, last_used);
 if (ret != DMA_SUCCESS) {
  atc_cleanup_descriptors(atchan);

  last_complete = atchan->completed_cookie;
  last_used = chan->cookie;

  ret = dma_async_is_complete(cookie, last_complete, last_used);
 }

 spin_unlock_bh(&atchan->lock);

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return ret;
}
