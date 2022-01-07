
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int dma_sync_single_for_device (struct device*,scalar_t__,size_t,int) ;
 scalar_t__ page_to_phys (struct page*) ;

dma_addr_t dma_map_page(struct device *dev, struct page *page,
   unsigned long offset, size_t size,
   enum dma_data_direction dir)
{
 dma_addr_t handle = page_to_phys(page) + offset;
 dma_sync_single_for_device(dev, handle, size, dir);
 return handle;
}
