
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_rx_queue {int * rb_stts; int * bd; int rb_stts_dma; int bd_dma; TYPE_2__* pool; } ;
struct il_rb_status {int dummy; } ;
struct TYPE_4__ {int rx_page_order; } ;
struct il_priv {TYPE_3__* pci_dev; TYPE_1__ hw_params; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int * page; int page_dma; } ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 int __il_free_pages (struct il_priv*,int *) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int pci_unmap_page (TYPE_3__*,int ,int,int ) ;

__attribute__((used)) static void
il3945_rx_queue_free(struct il_priv *il, struct il_rx_queue *rxq)
{
 int i;
 for (i = 0; i < RX_QUEUE_SIZE + RX_FREE_BUFFERS; i++) {
  if (rxq->pool[i].page != ((void*)0)) {
   pci_unmap_page(il->pci_dev, rxq->pool[i].page_dma,
           PAGE_SIZE << il->hw_params.rx_page_order,
           PCI_DMA_FROMDEVICE);
   __il_free_pages(il, rxq->pool[i].page);
   rxq->pool[i].page = ((void*)0);
  }
 }

 dma_free_coherent(&il->pci_dev->dev, 4 * RX_QUEUE_SIZE, rxq->bd,
     rxq->bd_dma);
 dma_free_coherent(&il->pci_dev->dev, sizeof(struct il_rb_status),
     rxq->rb_stts, rxq->rb_stts_dma);
 rxq->bd = ((void*)0);
 rxq->rb_stts = ((void*)0);
}
