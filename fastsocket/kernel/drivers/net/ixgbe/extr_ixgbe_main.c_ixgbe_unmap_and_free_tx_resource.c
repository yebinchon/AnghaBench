
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_tx_buffer {int * skb; int * next_to_watch; } ;
struct ixgbe_ring {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma ;
 int dma_unmap_addr (struct ixgbe_tx_buffer*,int ) ;
 scalar_t__ dma_unmap_len (struct ixgbe_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct ixgbe_tx_buffer*,int ,int ) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int len ;

void ixgbe_unmap_and_free_tx_resource(struct ixgbe_ring *ring,
          struct ixgbe_tx_buffer *tx_buffer)
{
 if (tx_buffer->skb) {
  dev_kfree_skb_any(tx_buffer->skb);
  if (dma_unmap_len(tx_buffer, len))
   dma_unmap_single(ring->dev,
      dma_unmap_addr(tx_buffer, dma),
      dma_unmap_len(tx_buffer, len),
      DMA_TO_DEVICE);
 } else if (dma_unmap_len(tx_buffer, len)) {
  dma_unmap_page(ring->dev,
          dma_unmap_addr(tx_buffer, dma),
          dma_unmap_len(tx_buffer, len),
          DMA_TO_DEVICE);
 }
 tx_buffer->next_to_watch = ((void*)0);
 tx_buffer->skb = ((void*)0);
 dma_unmap_len_set(tx_buffer, len, 0);

}
