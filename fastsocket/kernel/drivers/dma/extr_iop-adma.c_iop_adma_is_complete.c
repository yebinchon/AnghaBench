
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {int completed_cookie; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_SUCCESS ;
 int dma_async_is_complete (int ,int ,int ) ;
 int iop_adma_slot_cleanup (struct iop_adma_chan*) ;
 struct iop_adma_chan* to_iop_adma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status iop_adma_is_complete(struct dma_chan *chan,
     dma_cookie_t cookie,
     dma_cookie_t *done,
     dma_cookie_t *used)
{
 struct iop_adma_chan *iop_chan = to_iop_adma_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;
 enum dma_status ret;

 last_used = chan->cookie;
 last_complete = iop_chan->completed_cookie;

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 ret = dma_async_is_complete(cookie, last_complete, last_used);
 if (ret == DMA_SUCCESS)
  return ret;

 iop_adma_slot_cleanup(iop_chan);

 last_used = chan->cookie;
 last_complete = iop_chan->completed_cookie;

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return dma_async_is_complete(cookie, last_complete, last_used);
}
