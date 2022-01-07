
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_tx_buffer {scalar_t__ time_stamp; int * skb; scalar_t__ dma; int length; scalar_t__ mapped_as_page; } ;
struct ixgbevf_ring {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void ixgbevf_unmap_and_free_tx_resource(struct ixgbevf_ring *tx_ring,
            struct ixgbevf_tx_buffer
            *tx_buffer_info)
{
 if (tx_buffer_info->dma) {
  if (tx_buffer_info->mapped_as_page)
   dma_unmap_page(tx_ring->dev,
           tx_buffer_info->dma,
           tx_buffer_info->length,
           DMA_TO_DEVICE);
  else
   dma_unmap_single(tx_ring->dev,
      tx_buffer_info->dma,
      tx_buffer_info->length,
      DMA_TO_DEVICE);
  tx_buffer_info->dma = 0;
 }
 if (tx_buffer_info->skb) {
  dev_kfree_skb_any(tx_buffer_info->skb);
  tx_buffer_info->skb = ((void*)0);
 }
 tx_buffer_info->time_stamp = 0;

}
