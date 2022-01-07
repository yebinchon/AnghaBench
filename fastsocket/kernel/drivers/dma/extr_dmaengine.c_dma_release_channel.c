
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int client_count; int * private; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ privatecnt; int cap_mask; } ;


 int DMA_PRIVATE ;
 int WARN_ONCE (int,char*,int) ;
 int dma_cap_clear (int ,int ) ;
 int dma_chan_put (struct dma_chan*) ;
 int dma_list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dma_release_channel(struct dma_chan *chan)
{
 mutex_lock(&dma_list_mutex);
 WARN_ONCE(chan->client_count != 1,
    "chan reference count %d != 1\n", chan->client_count);
 dma_chan_put(chan);

 if (--chan->device->privatecnt == 0)
  dma_cap_clear(DMA_PRIVATE, chan->device->cap_mask);
 chan->private = ((void*)0);
 mutex_unlock(&dma_list_mutex);
}
