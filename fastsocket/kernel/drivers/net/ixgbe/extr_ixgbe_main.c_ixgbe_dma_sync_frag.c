
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skb_frag_struct {int page_offset; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int dev; } ;
struct TYPE_4__ {int page_released; scalar_t__ dma; } ;
struct TYPE_3__ {struct skb_frag_struct* frags; } ;


 int DMA_FROM_DEVICE ;
 TYPE_2__* IXGBE_CB (struct sk_buff*) ;
 int dma_sync_single_range_for_cpu (int ,scalar_t__,int ,int ,int ) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
    struct sk_buff *skb)
{

 if (unlikely(IXGBE_CB(skb)->page_released)) {
  dma_unmap_page(rx_ring->dev, IXGBE_CB(skb)->dma,
          ixgbe_rx_pg_size(rx_ring), DMA_FROM_DEVICE);
  IXGBE_CB(skb)->page_released = 0;
 } else {
  struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[0];

  dma_sync_single_range_for_cpu(rx_ring->dev,
           IXGBE_CB(skb)->dma,
           frag->page_offset,
           ixgbe_rx_bufsz(rx_ring),
           DMA_FROM_DEVICE);
 }
 IXGBE_CB(skb)->dma = 0;
}
