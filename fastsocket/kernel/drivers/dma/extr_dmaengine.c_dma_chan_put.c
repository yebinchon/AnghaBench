
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {scalar_t__ client_count; TYPE_1__* device; } ;
struct TYPE_2__ {int (* device_free_chan_resources ) (struct dma_chan*) ;} ;


 int dma_chan_to_owner (struct dma_chan*) ;
 int module_put (int ) ;
 int stub1 (struct dma_chan*) ;

__attribute__((used)) static void dma_chan_put(struct dma_chan *chan)
{
 if (!chan->client_count)
  return;
 chan->client_count--;
 module_put(dma_chan_to_owner(chan));
 if (chan->client_count == 0)
  chan->device->device_free_chan_resources(chan);
}
