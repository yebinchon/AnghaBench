
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_tx_ring {int * desc_head; int phys_addr; int * hw_consumer; int hw_cons_phys_addr; } ;
struct qlcnic_host_sds_ring {int * desc_head; int phys_addr; } ;
struct qlcnic_host_rds_ring {int * desc_head; int phys_addr; } ;
struct qlcnic_adapter {int max_drv_tx_rings; int max_rds_rings; int max_sds_rings; TYPE_1__* pdev; struct qlcnic_host_tx_ring* tx_ring; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_2__ {int dev; } ;


 int RCV_DESC_RINGSIZE (struct qlcnic_host_rds_ring*) ;
 int STATUS_DESC_RINGSIZE (struct qlcnic_host_sds_ring*) ;
 int TX_DESC_RINGSIZE (struct qlcnic_host_tx_ring*) ;
 int dma_free_coherent (int *,int,int *,int ) ;

void qlcnic_free_hw_resources(struct qlcnic_adapter *adapter)
{
 struct qlcnic_recv_context *recv_ctx;
 struct qlcnic_host_rds_ring *rds_ring;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_host_tx_ring *tx_ring;
 int ring;

 recv_ctx = adapter->recv_ctx;

 for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
  tx_ring = &adapter->tx_ring[ring];
  if (tx_ring->hw_consumer != ((void*)0)) {
   dma_free_coherent(&adapter->pdev->dev, sizeof(u32),
       tx_ring->hw_consumer,
       tx_ring->hw_cons_phys_addr);

   tx_ring->hw_consumer = ((void*)0);
  }

  if (tx_ring->desc_head != ((void*)0)) {
   dma_free_coherent(&adapter->pdev->dev,
       TX_DESC_RINGSIZE(tx_ring),
       tx_ring->desc_head,
       tx_ring->phys_addr);
   tx_ring->desc_head = ((void*)0);
  }
 }

 for (ring = 0; ring < adapter->max_rds_rings; ring++) {
  rds_ring = &recv_ctx->rds_rings[ring];

  if (rds_ring->desc_head != ((void*)0)) {
   dma_free_coherent(&adapter->pdev->dev,
     RCV_DESC_RINGSIZE(rds_ring),
     rds_ring->desc_head,
     rds_ring->phys_addr);
   rds_ring->desc_head = ((void*)0);
  }
 }

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];

  if (sds_ring->desc_head != ((void*)0)) {
   dma_free_coherent(&adapter->pdev->dev,
    STATUS_DESC_RINGSIZE(sds_ring),
    sds_ring->desc_head,
    sds_ring->phys_addr);
   sds_ring->desc_head = ((void*)0);
  }
 }
}
