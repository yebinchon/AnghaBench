
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int completed_cookie; int is_complete_cookie; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_SUCCESS ;
 int dma_async_is_complete (int ,int ,int ) ;
 int mv_xor_clean_completed_slots (struct mv_xor_chan*) ;
 int mv_xor_slot_cleanup (struct mv_xor_chan*) ;
 struct mv_xor_chan* to_mv_xor_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status mv_xor_is_complete(struct dma_chan *chan,
       dma_cookie_t cookie,
       dma_cookie_t *done,
       dma_cookie_t *used)
{
 struct mv_xor_chan *mv_chan = to_mv_xor_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;
 enum dma_status ret;

 last_used = chan->cookie;
 last_complete = mv_chan->completed_cookie;
 mv_chan->is_complete_cookie = cookie;
 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 ret = dma_async_is_complete(cookie, last_complete, last_used);
 if (ret == DMA_SUCCESS) {
  mv_xor_clean_completed_slots(mv_chan);
  return ret;
 }
 mv_xor_slot_cleanup(mv_chan);

 last_used = chan->cookie;
 last_complete = mv_chan->completed_cookie;

 if (done)
  *done = last_complete;
 if (used)
  *used = last_used;

 return dma_async_is_complete(cookie, last_complete, last_used);
}
