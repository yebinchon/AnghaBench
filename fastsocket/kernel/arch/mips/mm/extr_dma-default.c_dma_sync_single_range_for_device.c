
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int __dma_sync (unsigned long,size_t,int) ;
 unsigned long dma_addr_to_virt (struct device*,int ) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_extra_sync_for_device (struct device*) ;

void dma_sync_single_range_for_device(struct device *dev, dma_addr_t dma_handle,
 unsigned long offset, size_t size, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 plat_extra_sync_for_device(dev);
 if (!plat_device_is_coherent(dev)) {
  unsigned long addr;

  addr = dma_addr_to_virt(dev, dma_handle);
  __dma_sync(addr + offset, size, direction);
 }
}
