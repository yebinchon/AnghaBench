
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dma_chan {int completed_cookie; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_async_is_complete (int ,int ,int ) ;
 int fsl_chan_ld_cleanup (struct fsl_dma_chan*) ;
 struct fsl_dma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status fsl_dma_is_complete(struct dma_chan *chan,
     dma_cookie_t cookie,
     dma_cookie_t *done,
     dma_cookie_t *used)
{
 struct fsl_dma_chan *fsl_chan = to_fsl_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;

 fsl_chan_ld_cleanup(fsl_chan);

 last_used = chan->cookie;
 last_complete = fsl_chan->completed_cookie;

 if (done)
  *done = last_complete;

 if (used)
  *used = last_used;

 return dma_async_is_complete(cookie, last_complete, last_used);
}
