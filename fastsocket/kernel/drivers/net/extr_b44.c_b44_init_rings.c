
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b44 {int flags; int rx_pending; int tx_ring_dma; TYPE_1__* sdev; int rx_ring_dma; int tx_ring; int rx_ring; } ;
struct TYPE_2__ {int dma_dev; } ;


 int B44_FLAG_RX_RING_HACK ;
 int B44_FLAG_TX_RING_HACK ;
 int B44_RX_RING_BYTES ;
 int B44_TX_RING_BYTES ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TABLE_BYTES ;
 int DMA_TO_DEVICE ;
 scalar_t__ b44_alloc_rx_skb (struct b44*,int,int) ;
 int b44_free_rings (struct b44*) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void b44_init_rings(struct b44 *bp)
{
 int i;

 b44_free_rings(bp);

 memset(bp->rx_ring, 0, B44_RX_RING_BYTES);
 memset(bp->tx_ring, 0, B44_TX_RING_BYTES);

 if (bp->flags & B44_FLAG_RX_RING_HACK)
  dma_sync_single_for_device(bp->sdev->dma_dev, bp->rx_ring_dma,
        DMA_TABLE_BYTES, DMA_BIDIRECTIONAL);

 if (bp->flags & B44_FLAG_TX_RING_HACK)
  dma_sync_single_for_device(bp->sdev->dma_dev, bp->tx_ring_dma,
        DMA_TABLE_BYTES, DMA_TO_DEVICE);

 for (i = 0; i < bp->rx_pending; i++) {
  if (b44_alloc_rx_skb(bp, -1, i) < 0)
   break;
 }
}
