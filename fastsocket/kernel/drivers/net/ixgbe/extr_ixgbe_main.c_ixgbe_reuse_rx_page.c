
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ixgbe_rx_buffer {int page_offset; int dma; int page; } ;
struct ixgbe_ring {size_t next_to_alloc; size_t count; int dev; struct ixgbe_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_device (int ,int ,int ,int ,int ) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_reuse_rx_page(struct ixgbe_ring *rx_ring,
    struct ixgbe_rx_buffer *old_buff)
{
 struct ixgbe_rx_buffer *new_buff;
 u16 nta = rx_ring->next_to_alloc;

 new_buff = &rx_ring->rx_buffer_info[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 new_buff->page = old_buff->page;
 new_buff->dma = old_buff->dma;
 new_buff->page_offset = old_buff->page_offset;


 dma_sync_single_range_for_device(rx_ring->dev, new_buff->dma,
      new_buff->page_offset,
      ixgbe_rx_bufsz(rx_ring),
      DMA_FROM_DEVICE);
}
