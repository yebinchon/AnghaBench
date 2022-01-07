
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int completed; } ;
struct dma_chan {int cookie; int device; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_SUCCESS ;
 int dma_async_is_complete (int ,int ,int ) ;
 int dwc_scan_descriptors (int ,struct dw_dma_chan*) ;
 int to_dw_dma (int ) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status
dwc_is_tx_complete(struct dma_chan *chan,
  dma_cookie_t cookie,
  dma_cookie_t *done, dma_cookie_t *used)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;
 int ret;

 last_complete = dwc->completed;
 last_used = chan->cookie;

 ret = dma_async_is_complete(cookie, last_complete, last_used);
 if (ret != DMA_SUCCESS) {
  dwc_scan_descriptors(to_dw_dma(chan->device), dwc);

  last_complete = dwc->completed;
  last_used = chan->cookie;

  ret = dma_async_is_complete(cookie, last_complete, last_used);
 }

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return ret;
}
