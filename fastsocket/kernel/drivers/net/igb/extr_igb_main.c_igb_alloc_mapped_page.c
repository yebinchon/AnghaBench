
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct igb_rx_buffer {scalar_t__ page_offset; struct page* page; int dma; } ;
struct TYPE_2__ {int alloc_failed; } ;
struct igb_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 int __GFP_COLD ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ likely (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
      struct igb_rx_buffer *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma;


 if (likely(page))
  return 1;


 page = alloc_page(GFP_ATOMIC | __GFP_COLD);
 if (unlikely(!page)) {
  rx_ring->rx_stats.alloc_failed++;
  return 0;
 }


 dma = dma_map_page(rx_ring->dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE);




 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_page(page);

  rx_ring->rx_stats.alloc_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page = page;
 bi->page_offset = 0;

 return 1;
}
