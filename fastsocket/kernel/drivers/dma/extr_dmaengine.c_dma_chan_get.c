
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct dma_chan {int client_count; TYPE_1__* device; } ;
struct TYPE_2__ {int (* device_alloc_chan_resources ) (struct dma_chan*) ;int cap_mask; } ;


 int DMA_PRIVATE ;
 int ENODEV ;
 int __module_get (struct module*) ;
 int balance_ref_count (struct dma_chan*) ;
 struct module* dma_chan_to_owner (struct dma_chan*) ;
 int dma_has_cap (int ,int ) ;
 int module_put (struct module*) ;
 int stub1 (struct dma_chan*) ;
 scalar_t__ try_module_get (struct module*) ;

__attribute__((used)) static int dma_chan_get(struct dma_chan *chan)
{
 int err = -ENODEV;
 struct module *owner = dma_chan_to_owner(chan);

 if (chan->client_count) {
  __module_get(owner);
  err = 0;
 } else if (try_module_get(owner))
  err = 0;

 if (err == 0)
  chan->client_count++;


 if (chan->client_count == 1 && err == 0) {
  int desc_cnt = chan->device->device_alloc_chan_resources(chan);

  if (desc_cnt < 0) {
   err = desc_cnt;
   chan->client_count = 0;
   module_put(owner);
  } else if (!dma_has_cap(DMA_PRIVATE, chan->device->cap_mask))
   balance_ref_count(chan);
 }

 return err;
}
