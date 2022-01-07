
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int flush_kernel_dcache_range (unsigned long,size_t) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static dma_addr_t pa11_dma_map_single(struct device *dev, void *addr, size_t size, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 flush_kernel_dcache_range((unsigned long) addr, size);
 return virt_to_phys(addr);
}
