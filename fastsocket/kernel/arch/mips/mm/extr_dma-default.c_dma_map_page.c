
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
 int __dma_sync (unsigned long,size_t,int) ;
 scalar_t__ page_address (struct page*) ;
 int plat_device_is_coherent (struct device*) ;
 scalar_t__ plat_map_dma_mem_page (struct device*,struct page*) ;

dma_addr_t dma_map_page(struct device *dev, struct page *page,
 unsigned long offset, size_t size, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 if (!plat_device_is_coherent(dev)) {
  unsigned long addr;

  addr = (unsigned long) page_address(page) + offset;
  __dma_sync(addr, size, direction);
 }

 return plat_map_dma_mem_page(dev, page) + offset;
}
