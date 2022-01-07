
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_async_tx_descriptor {int flags; void* callback_param; int (* callback ) (void*) ;int cookie; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int private; } ;
struct at_dma_chan {TYPE_2__ chan_common; int free_list; int completed_cookie; } ;
struct TYPE_4__ {int saddr; int daddr; } ;
struct at_desc {int len; TYPE_1__ lli; int desc_node; int tx_list; struct dma_async_tx_descriptor txd; } ;
typedef int (* dma_async_tx_callback ) (void*) ;


 int DMA_COMPL_DEST_UNMAP_SINGLE ;
 int DMA_COMPL_SKIP_DEST_UNMAP ;
 int DMA_COMPL_SKIP_SRC_UNMAP ;
 int DMA_COMPL_SRC_UNMAP_SINGLE ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int chan2dev (TYPE_2__*) ;
 struct device* chan2parent (TYPE_2__*) ;
 int dev_vdbg (int ,char*,int ) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;

__attribute__((used)) static void
atc_chain_complete(struct at_dma_chan *atchan, struct at_desc *desc)
{
 dma_async_tx_callback callback;
 void *param;
 struct dma_async_tx_descriptor *txd = &desc->txd;

 dev_vdbg(chan2dev(&atchan->chan_common),
  "descriptor %u complete\n", txd->cookie);

 atchan->completed_cookie = txd->cookie;
 callback = txd->callback;
 param = txd->callback_param;


 list_splice_init(&desc->tx_list, &atchan->free_list);

 list_move(&desc->desc_node, &atchan->free_list);


 if (!atchan->chan_common.private) {
  struct device *parent = chan2parent(&atchan->chan_common);
  if (!(txd->flags & DMA_COMPL_SKIP_DEST_UNMAP)) {
   if (txd->flags & DMA_COMPL_DEST_UNMAP_SINGLE)
    dma_unmap_single(parent,
      desc->lli.daddr,
      desc->len, DMA_FROM_DEVICE);
   else
    dma_unmap_page(parent,
      desc->lli.daddr,
      desc->len, DMA_FROM_DEVICE);
  }
  if (!(txd->flags & DMA_COMPL_SKIP_SRC_UNMAP)) {
   if (txd->flags & DMA_COMPL_SRC_UNMAP_SINGLE)
    dma_unmap_single(parent,
      desc->lli.saddr,
      desc->len, DMA_TO_DEVICE);
   else
    dma_unmap_page(parent,
      desc->lli.saddr,
      desc->len, DMA_TO_DEVICE);
  }
 }





 if (callback)
  callback(param);

 dma_run_dependencies(txd);
}
