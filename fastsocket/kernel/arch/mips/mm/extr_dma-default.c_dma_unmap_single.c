
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int __dma_sync (int ,size_t,int) ;
 scalar_t__ cpu_is_noncoherent_r10000 (struct device*) ;
 int dma_addr_to_virt (struct device*,int ) ;
 int plat_unmap_dma_mem (struct device*,int ,size_t,int) ;

void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
 enum dma_data_direction direction)
{
 if (cpu_is_noncoherent_r10000(dev))
  __dma_sync(dma_addr_to_virt(dev, dma_addr), size,
             direction);

 plat_unmap_dma_mem(dev, dma_addr, size, direction);
}
