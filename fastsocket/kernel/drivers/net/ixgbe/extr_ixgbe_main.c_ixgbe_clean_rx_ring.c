
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int * page; scalar_t__ dma; struct sk_buff* skb; } ;
struct ixgbe_ring {size_t count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct ixgbe_rx_buffer* desc; struct ixgbe_rx_buffer* rx_buffer_info; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int page_released; scalar_t__ dma; } ;


 int DMA_FROM_DEVICE ;
 TYPE_1__* IXGBE_CB (struct sk_buff*) ;
 int __free_pages (int *,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_order (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 int memset (struct ixgbe_rx_buffer*,int ,unsigned long) ;

__attribute__((used)) static void ixgbe_clean_rx_ring(struct ixgbe_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 unsigned long size;
 u16 i;


 if (!rx_ring->rx_buffer_info)
  return;


 for (i = 0; i < rx_ring->count; i++) {
  struct ixgbe_rx_buffer *rx_buffer;

  rx_buffer = &rx_ring->rx_buffer_info[i];
  if (rx_buffer->skb) {
   struct sk_buff *skb = rx_buffer->skb;
   if (IXGBE_CB(skb)->page_released) {
    dma_unmap_page(dev,
            IXGBE_CB(skb)->dma,
            ixgbe_rx_bufsz(rx_ring),
            DMA_FROM_DEVICE);
    IXGBE_CB(skb)->page_released = 0;
   }
   dev_kfree_skb(skb);
  }
  rx_buffer->skb = ((void*)0);
  if (rx_buffer->dma)
   dma_unmap_page(dev, rx_buffer->dma,
           ixgbe_rx_pg_size(rx_ring),
           DMA_FROM_DEVICE);
  rx_buffer->dma = 0;
  if (rx_buffer->page)
   __free_pages(rx_buffer->page,
         ixgbe_rx_pg_order(rx_ring));
  rx_buffer->page = ((void*)0);
 }

 size = sizeof(struct ixgbe_rx_buffer) * rx_ring->count;
 memset(rx_ring->rx_buffer_info, 0, size);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
