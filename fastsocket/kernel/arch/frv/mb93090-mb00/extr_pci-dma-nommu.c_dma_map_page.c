
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ page_to_phys (struct page*) ;

dma_addr_t dma_map_page(struct device *dev, struct page *page, unsigned long offset,
   size_t size, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);
 flush_dcache_page(page);
 return (dma_addr_t) page_to_phys(page) + offset;
}
