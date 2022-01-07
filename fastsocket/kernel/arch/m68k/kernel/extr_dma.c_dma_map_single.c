
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_sync_single_for_device (struct device*,int ,size_t,int) ;
 int virt_to_bus (void*) ;

dma_addr_t dma_map_single(struct device *dev, void *addr, size_t size,
     enum dma_data_direction dir)
{
 dma_addr_t handle = virt_to_bus(addr);

 dma_sync_single_for_device(dev, handle, size, dir);
 return handle;
}
