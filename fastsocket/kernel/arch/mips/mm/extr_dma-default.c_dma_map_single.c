
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int __dma_sync (unsigned long,size_t,int) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_map_dma_mem (struct device*,void*,size_t) ;

dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 enum dma_data_direction direction)
{
 unsigned long addr = (unsigned long) ptr;

 if (!plat_device_is_coherent(dev))
  __dma_sync(addr, size, direction);

 return plat_map_dma_mem(dev, ptr, size);
}
