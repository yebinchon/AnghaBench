
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2_tx_ring_info {int * tx_buf_ring; int * tx_desc_ring; int tx_desc_mapping; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int num_tx_rings; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int dev; } ;


 int TXBD_RING_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void
bnx2_free_tx_mem(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->num_tx_rings; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;

  if (txr->tx_desc_ring) {
   dma_free_coherent(&bp->pdev->dev, TXBD_RING_SIZE,
       txr->tx_desc_ring,
       txr->tx_desc_mapping);
   txr->tx_desc_ring = ((void*)0);
  }
  kfree(txr->tx_buf_ring);
  txr->tx_buf_ring = ((void*)0);
 }
}
