
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
typedef size_t u16 ;
struct igb_tx_buffer {int dummy; } ;
struct igb_rx_buffer {int dma; } ;
struct igb_ring {size_t next_to_clean; size_t count; struct igb_tx_buffer* tx_buffer_info; int dev; struct igb_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int E1000_RXD_STAT_DD ;
 int IGB_RX_BUFSZ ;
 union e1000_adv_rx_desc* IGB_RX_DESC (struct igb_ring*,size_t) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int igb_alloc_rx_buffers (struct igb_ring*,size_t) ;
 scalar_t__ igb_check_lbtest_frame (struct igb_rx_buffer*,unsigned int) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 int igb_unmap_and_free_tx_resource (struct igb_ring*,struct igb_tx_buffer*) ;

__attribute__((used)) static int igb_clean_test_rings(struct igb_ring *rx_ring,
    struct igb_ring *tx_ring,
    unsigned int size)
{
 union e1000_adv_rx_desc *rx_desc;
 struct igb_rx_buffer *rx_buffer_info;
 struct igb_tx_buffer *tx_buffer_info;
 u16 rx_ntc, tx_ntc, count = 0;


 rx_ntc = rx_ring->next_to_clean;
 tx_ntc = tx_ring->next_to_clean;
 rx_desc = IGB_RX_DESC(rx_ring, rx_ntc);

 while (igb_test_staterr(rx_desc, E1000_RXD_STAT_DD)) {

  rx_buffer_info = &rx_ring->rx_buffer_info[rx_ntc];


  dma_sync_single_for_cpu(rx_ring->dev,
     rx_buffer_info->dma,
     IGB_RX_BUFSZ,
     DMA_FROM_DEVICE);


  if (igb_check_lbtest_frame(rx_buffer_info, size))
   count++;


  dma_sync_single_for_device(rx_ring->dev,
        rx_buffer_info->dma,
        IGB_RX_BUFSZ,
        DMA_FROM_DEVICE);


  tx_buffer_info = &tx_ring->tx_buffer_info[tx_ntc];
  igb_unmap_and_free_tx_resource(tx_ring, tx_buffer_info);


  rx_ntc++;
  if (rx_ntc == rx_ring->count)
   rx_ntc = 0;
  tx_ntc++;
  if (tx_ntc == tx_ring->count)
   tx_ntc = 0;


  rx_desc = IGB_RX_DESC(rx_ring, rx_ntc);
 }


 igb_alloc_rx_buffers(rx_ring, count);
 rx_ring->next_to_clean = rx_ntc;
 tx_ring->next_to_clean = tx_ntc;

 return count;
}
