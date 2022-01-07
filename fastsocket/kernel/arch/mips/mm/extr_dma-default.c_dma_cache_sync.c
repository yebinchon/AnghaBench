
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int __dma_sync (unsigned long,size_t,int) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_extra_sync_for_device (struct device*) ;

void dma_cache_sync(struct device *dev, void *vaddr, size_t size,
        enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 plat_extra_sync_for_device(dev);
 if (!plat_device_is_coherent(dev))
  __dma_sync((unsigned long)vaddr, size, direction);
}
