
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rxq {int rx_used; TYPE_1__* pool; } ;
struct iwl_trans_pcie {int rx_page_order; struct iwl_rxq rxq; } ;
struct iwl_trans {int dev; } ;
struct TYPE_2__ {int list; int * page; int page_dma; } ;


 int DMA_FROM_DEVICE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int PAGE_SIZE ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 int __free_pages (int *,int) ;
 int dma_unmap_page (int ,int ,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void iwl_pcie_rxq_free_rbs(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rxq *rxq = &trans_pcie->rxq;
 int i;


 for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++) {


  if (rxq->pool[i].page != ((void*)0)) {
   dma_unmap_page(trans->dev, rxq->pool[i].page_dma,
           PAGE_SIZE << trans_pcie->rx_page_order,
           DMA_FROM_DEVICE);
   __free_pages(rxq->pool[i].page,
         trans_pcie->rx_page_order);
   rxq->pool[i].page = ((void*)0);
  }
  list_add_tail(&rxq->pool[i].list, &rxq->rx_used);
 }
}
