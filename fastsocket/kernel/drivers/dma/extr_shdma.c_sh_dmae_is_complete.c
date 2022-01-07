
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_chan {int completed_cookie; } ;
struct dma_chan {int cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int EBUSY ;
 int dma_async_is_complete (int ,int ,int ) ;
 int sh_dmae_chan_ld_cleanup (struct sh_dmae_chan*) ;
 struct sh_dmae_chan* to_sh_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status sh_dmae_is_complete(struct dma_chan *chan,
     dma_cookie_t cookie,
     dma_cookie_t *done,
     dma_cookie_t *used)
{
 struct sh_dmae_chan *sh_chan = to_sh_chan(chan);
 dma_cookie_t last_used;
 dma_cookie_t last_complete;

 sh_dmae_chan_ld_cleanup(sh_chan);

 last_used = chan->cookie;
 last_complete = sh_chan->completed_cookie;
 if (last_complete == -EBUSY)
  last_complete = last_used;

 if (done)
  *done = last_complete;

 if (used)
  *used = last_used;

 return dma_async_is_complete(cookie, last_complete, last_used);
}
