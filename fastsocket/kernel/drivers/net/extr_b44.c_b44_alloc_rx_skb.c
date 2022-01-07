
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct rx_header {scalar_t__ flags; scalar_t__ len; } ;
struct ring_info {struct sk_buff* skb; scalar_t__ mapping; } ;
struct dma_desc {void* addr; void* ctrl; } ;
struct b44 {int force_copybreak; int flags; int rx_ring_dma; TYPE_1__* sdev; int dma_offset; struct dma_desc* rx_ring; int dev; struct ring_info* rx_buffers; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dma_dev; } ;


 int B44_FLAG_RX_RING_HACK ;
 int B44_RX_RING_SIZE ;
 int DESC_CTRL_EOT ;
 int DESC_CTRL_LEN ;
 int DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_BIT_MASK (int) ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int RX_PKT_BUF_SZ ;
 struct sk_buff* __netdev_alloc_skb (int ,int,int) ;
 int b44_sync_dma_desc_for_device (TYPE_1__*,int ,int,int ) ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;

__attribute__((used)) static int b44_alloc_rx_skb(struct b44 *bp, int src_idx, u32 dest_idx_unmasked)
{
 struct dma_desc *dp;
 struct ring_info *src_map, *map;
 struct rx_header *rh;
 struct sk_buff *skb;
 dma_addr_t mapping;
 int dest_idx;
 u32 ctrl;

 src_map = ((void*)0);
 if (src_idx >= 0)
  src_map = &bp->rx_buffers[src_idx];
 dest_idx = dest_idx_unmasked & (B44_RX_RING_SIZE - 1);
 map = &bp->rx_buffers[dest_idx];
 skb = netdev_alloc_skb(bp->dev, RX_PKT_BUF_SZ);
 if (skb == ((void*)0))
  return -ENOMEM;

 mapping = dma_map_single(bp->sdev->dma_dev, skb->data,
     RX_PKT_BUF_SZ,
     DMA_FROM_DEVICE);



 if (dma_mapping_error(bp->sdev->dma_dev, mapping) ||
  mapping + RX_PKT_BUF_SZ > DMA_BIT_MASK(30)) {

  if (!dma_mapping_error(bp->sdev->dma_dev, mapping))
   dma_unmap_single(bp->sdev->dma_dev, mapping,
          RX_PKT_BUF_SZ, DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
  skb = __netdev_alloc_skb(bp->dev, RX_PKT_BUF_SZ, GFP_ATOMIC|GFP_DMA);
  if (skb == ((void*)0))
   return -ENOMEM;
  mapping = dma_map_single(bp->sdev->dma_dev, skb->data,
      RX_PKT_BUF_SZ,
      DMA_FROM_DEVICE);
  if (dma_mapping_error(bp->sdev->dma_dev, mapping) ||
      mapping + RX_PKT_BUF_SZ > DMA_BIT_MASK(30)) {
   if (!dma_mapping_error(bp->sdev->dma_dev, mapping))
    dma_unmap_single(bp->sdev->dma_dev, mapping, RX_PKT_BUF_SZ,DMA_FROM_DEVICE);
   dev_kfree_skb_any(skb);
   return -ENOMEM;
  }
  bp->force_copybreak = 1;
 }

 rh = (struct rx_header *) skb->data;

 rh->len = 0;
 rh->flags = 0;

 map->skb = skb;
 map->mapping = mapping;

 if (src_map != ((void*)0))
  src_map->skb = ((void*)0);

 ctrl = (DESC_CTRL_LEN & RX_PKT_BUF_SZ);
 if (dest_idx == (B44_RX_RING_SIZE - 1))
  ctrl |= DESC_CTRL_EOT;

 dp = &bp->rx_ring[dest_idx];
 dp->ctrl = cpu_to_le32(ctrl);
 dp->addr = cpu_to_le32((u32) mapping + bp->dma_offset);

 if (bp->flags & B44_FLAG_RX_RING_HACK)
  b44_sync_dma_desc_for_device(bp->sdev, bp->rx_ring_dma,
                       dest_idx * sizeof(*dp),
                       DMA_BIDIRECTIONAL);

 return RX_PKT_BUF_SZ;
}
