
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_chan {int completed; int lock; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_SUCCESS ;
 int dma_async_is_complete (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct txx9dmac_chan* to_txx9dmac_chan (struct dma_chan*) ;
 int txx9dmac_scan_descriptors (struct txx9dmac_chan*) ;

__attribute__((used)) static enum dma_status
txx9dmac_is_tx_complete(struct dma_chan *chan,
   dma_cookie_t cookie,
  dma_cookie_t *done, dma_cookie_t *used)
{
 struct txx9dmac_chan *dc = to_txx9dmac_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;
 int ret;

 last_complete = dc->completed;
 last_used = chan->cookie;

 ret = dma_async_is_complete(cookie, last_complete, last_used);
 if (ret != DMA_SUCCESS) {
  spin_lock_bh(&dc->lock);
  txx9dmac_scan_descriptors(dc);
  spin_unlock_bh(&dc->lock);

  last_complete = dc->completed;
  last_used = chan->cookie;

  ret = dma_async_is_complete(cookie, last_complete, last_used);
 }

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return ret;
}
