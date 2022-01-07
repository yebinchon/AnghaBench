
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef size_t u16 ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_rx_buffer {int dma; } ;
struct ixgbe_ring {size_t next_to_clean; size_t count; struct ixgbe_tx_buffer* tx_buffer_info; int dev; struct ixgbe_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int IXGBE_RXD_STAT_DD ;
 union ixgbe_adv_rx_desc* IXGBE_RX_DESC (struct ixgbe_ring*,size_t) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ixgbe_alloc_rx_buffers (struct ixgbe_ring*,size_t) ;
 scalar_t__ ixgbe_check_lbtest_frame (struct ixgbe_rx_buffer*,unsigned int) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 scalar_t__ ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int ixgbe_unmap_and_free_tx_resource (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ;

__attribute__((used)) static u16 ixgbe_clean_test_rings(struct ixgbe_ring *rx_ring,
      struct ixgbe_ring *tx_ring,
      unsigned int size)
{
 union ixgbe_adv_rx_desc *rx_desc;
 struct ixgbe_rx_buffer *rx_buffer;
 struct ixgbe_tx_buffer *tx_buffer;
 u16 rx_ntc, tx_ntc, count = 0;


 rx_ntc = rx_ring->next_to_clean;
 tx_ntc = tx_ring->next_to_clean;
 rx_desc = IXGBE_RX_DESC(rx_ring, rx_ntc);

 while (ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_DD)) {

  rx_buffer = &rx_ring->rx_buffer_info[rx_ntc];


  dma_sync_single_for_cpu(rx_ring->dev,
     rx_buffer->dma,
     ixgbe_rx_bufsz(rx_ring),
     DMA_FROM_DEVICE);


  if (ixgbe_check_lbtest_frame(rx_buffer, size))
   count++;


  dma_sync_single_for_device(rx_ring->dev,
        rx_buffer->dma,
        ixgbe_rx_bufsz(rx_ring),
        DMA_FROM_DEVICE);


  tx_buffer = &tx_ring->tx_buffer_info[tx_ntc];
  ixgbe_unmap_and_free_tx_resource(tx_ring, tx_buffer);


  rx_ntc++;
  if (rx_ntc == rx_ring->count)
   rx_ntc = 0;
  tx_ntc++;
  if (tx_ntc == tx_ring->count)
   tx_ntc = 0;


  rx_desc = IXGBE_RX_DESC(rx_ring, rx_ntc);
 }


 ixgbe_alloc_rx_buffers(rx_ring, count);
 rx_ring->next_to_clean = rx_ntc;
 tx_ring->next_to_clean = tx_ntc;

 return count;
}
