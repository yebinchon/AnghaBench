
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ixgbe_rx_buffer {int dma; scalar_t__ page_offset; struct page* page; } ;
struct TYPE_2__ {int alloc_rx_page_failed; } ;
struct ixgbe_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int __GFP_COLD ;
 int __GFP_COMP ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int,int ) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int ixgbe_rx_pg_order (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbe_alloc_mapped_page(struct ixgbe_ring *rx_ring,
        struct ixgbe_rx_buffer *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma = bi->dma;


 if (likely(dma))
  return 1;


 if (likely(!page)) {
  page = alloc_pages(GFP_ATOMIC | __GFP_COLD | __GFP_COMP,
       ixgbe_rx_pg_order(rx_ring));
  if (unlikely(!page)) {
   rx_ring->rx_stats.alloc_rx_page_failed++;
   return 0;
  }
  bi->page = page;
 }


 dma = dma_map_page(rx_ring->dev, page, 0,
      ixgbe_rx_pg_size(rx_ring), DMA_FROM_DEVICE);





 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_pages(page, ixgbe_rx_pg_order(rx_ring));
  bi->page = ((void*)0);

  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page_offset = 0;

 return 1;
}
