
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct igb_rx_buffer {int page_offset; int dma; } ;
struct igb_ring {size_t next_to_alloc; size_t count; int dev; struct igb_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int IGB_RX_BUFSZ ;
 int dma_sync_single_range_for_device (int ,int ,int ,int ,int ) ;
 int memcpy (struct igb_rx_buffer*,struct igb_rx_buffer*,int) ;

__attribute__((used)) static void igb_reuse_rx_page(struct igb_ring *rx_ring,
         struct igb_rx_buffer *old_buff)
{
 struct igb_rx_buffer *new_buff;
 u16 nta = rx_ring->next_to_alloc;

 new_buff = &rx_ring->rx_buffer_info[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 memcpy(new_buff, old_buff, sizeof(struct igb_rx_buffer));


 dma_sync_single_range_for_device(rx_ring->dev, old_buff->dma,
      old_buff->page_offset,
      IGB_RX_BUFSZ,
      DMA_FROM_DEVICE);
}
