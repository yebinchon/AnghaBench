
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {int completed_cookie; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_async_is_complete (int ,int ,int ) ;
 struct ioat_chan_common* to_chan_common (struct dma_chan*) ;

__attribute__((used)) static inline enum dma_status
ioat_is_complete(struct dma_chan *c, dma_cookie_t cookie,
   dma_cookie_t *done, dma_cookie_t *used)
{
 struct ioat_chan_common *chan = to_chan_common(c);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;

 last_used = c->cookie;
 last_complete = chan->completed_cookie;

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return dma_async_is_complete(cookie, last_complete, last_used);
}
