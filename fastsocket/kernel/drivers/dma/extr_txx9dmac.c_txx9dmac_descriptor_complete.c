
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct txx9dmac_slave {int dummy; } ;
struct TYPE_6__ {int SAR; int DAR; } ;
struct TYPE_5__ {int SAR; int DAR; } ;
struct dma_async_tx_descriptor {int flags; void* callback_param; int (* callback ) (void*) ;int cookie; } ;
struct txx9dmac_desc {int len; TYPE_2__ hwdesc32; TYPE_1__ hwdesc; int desc_node; int tx_list; struct dma_async_tx_descriptor txd; } ;
struct TYPE_7__ {struct txx9dmac_slave* private; } ;
struct txx9dmac_chan {TYPE_3__ chan; int free_list; int completed; } ;
typedef int (* dma_async_tx_callback ) (void*) ;
typedef int dma_addr_t ;


 int DMA_COMPL_DEST_UNMAP_SINGLE ;
 int DMA_COMPL_SKIP_DEST_UNMAP ;
 int DMA_COMPL_SKIP_SRC_UNMAP ;
 int DMA_COMPL_SRC_UNMAP_SINGLE ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int chan2dev (TYPE_3__*) ;
 int chan2parent (TYPE_3__*) ;
 int dev_vdbg (int ,char*,int ,struct txx9dmac_desc*) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ is_dmac64 (struct txx9dmac_chan*) ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int txx9dmac_sync_desc_for_cpu (struct txx9dmac_chan*,struct txx9dmac_desc*) ;

__attribute__((used)) static void
txx9dmac_descriptor_complete(struct txx9dmac_chan *dc,
        struct txx9dmac_desc *desc)
{
 dma_async_tx_callback callback;
 void *param;
 struct dma_async_tx_descriptor *txd = &desc->txd;
 struct txx9dmac_slave *ds = dc->chan.private;

 dev_vdbg(chan2dev(&dc->chan), "descriptor %u %p complete\n",
   txd->cookie, desc);

 dc->completed = txd->cookie;
 callback = txd->callback;
 param = txd->callback_param;

 txx9dmac_sync_desc_for_cpu(dc, desc);
 list_splice_init(&desc->tx_list, &dc->free_list);
 list_move(&desc->desc_node, &dc->free_list);

 if (!ds) {
  dma_addr_t dmaaddr;
  if (!(txd->flags & DMA_COMPL_SKIP_DEST_UNMAP)) {
   dmaaddr = is_dmac64(dc) ?
    desc->hwdesc.DAR : desc->hwdesc32.DAR;
   if (txd->flags & DMA_COMPL_DEST_UNMAP_SINGLE)
    dma_unmap_single(chan2parent(&dc->chan),
     dmaaddr, desc->len, DMA_FROM_DEVICE);
   else
    dma_unmap_page(chan2parent(&dc->chan),
     dmaaddr, desc->len, DMA_FROM_DEVICE);
  }
  if (!(txd->flags & DMA_COMPL_SKIP_SRC_UNMAP)) {
   dmaaddr = is_dmac64(dc) ?
    desc->hwdesc.SAR : desc->hwdesc32.SAR;
   if (txd->flags & DMA_COMPL_SRC_UNMAP_SINGLE)
    dma_unmap_single(chan2parent(&dc->chan),
     dmaaddr, desc->len, DMA_TO_DEVICE);
   else
    dma_unmap_page(chan2parent(&dc->chan),
     dmaaddr, desc->len, DMA_TO_DEVICE);
  }
 }





 if (callback)
  callback(param);
 dma_run_dependencies(txd);
}
