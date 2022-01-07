
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dma_chan {int cookie; struct at_dma_slave* private; int device; } ;
struct at_dma_slave {scalar_t__ dma_dev; scalar_t__ cfg; } ;
struct at_dma_chan {int descs_allocated; int completed_cookie; int lock; int free_list; } ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct at_dma {TYPE_1__ dma_common; } ;
struct at_desc {int desc_node; } ;


 scalar_t__ ATC_DEFAULT_CFG ;
 int BUG_ON (int) ;
 int CFG ;
 int EIO ;
 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 struct at_desc* atc_alloc_descriptor (struct dma_chan*,int ) ;
 scalar_t__ atc_chan_is_enabled (struct at_dma_chan*) ;
 int chan2dev (struct dma_chan*) ;
 int channel_writel (struct at_dma_chan*,int ,scalar_t__) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (scalar_t__,char*,int) ;
 int dev_vdbg (int ,char*) ;
 int init_nr_desc_per_channel ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int list_splice (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tmp_list ;
 struct at_dma* to_at_dma (int ) ;
 struct at_dma_chan* to_at_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int atc_alloc_chan_resources(struct dma_chan *chan)
{
 struct at_dma_chan *atchan = to_at_dma_chan(chan);
 struct at_dma *atdma = to_at_dma(chan->device);
 struct at_desc *desc;
 struct at_dma_slave *atslave;
 int i;
 u32 cfg;
 LIST_HEAD(tmp_list);

 dev_vdbg(chan2dev(chan), "alloc_chan_resources\n");


 if (atc_chan_is_enabled(atchan)) {
  dev_dbg(chan2dev(chan), "DMA channel not idle ?\n");
  return -EIO;
 }

 cfg = ATC_DEFAULT_CFG;

 atslave = chan->private;
 if (atslave) {




  BUG_ON(!atslave->dma_dev || atslave->dma_dev != atdma->dma_common.dev);


  if (atslave->cfg)
   cfg = atslave->cfg;
 }



 if (!list_empty(&atchan->free_list))
  return atchan->descs_allocated;


 for (i = 0; i < init_nr_desc_per_channel; i++) {
  desc = atc_alloc_descriptor(chan, GFP_KERNEL);
  if (!desc) {
   dev_err(atdma->dma_common.dev,
    "Only %d initial descriptors\n", i);
   break;
  }
  list_add_tail(&desc->desc_node, &tmp_list);
 }

 spin_lock_bh(&atchan->lock);
 atchan->descs_allocated = i;
 list_splice(&tmp_list, &atchan->free_list);
 atchan->completed_cookie = chan->cookie = 1;
 spin_unlock_bh(&atchan->lock);


 channel_writel(atchan, CFG, cfg);

 dev_dbg(chan2dev(chan),
  "alloc_chan_resources: allocated %d descriptors\n",
  atchan->descs_allocated);

 return atchan->descs_allocated;
}
