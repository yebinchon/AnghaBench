
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
 scalar_t__ phys_to_virt (int ) ;

__attribute__((used)) static void pa11_dma_sync_single_for_cpu(struct device *dev, dma_addr_t dma_handle, unsigned long offset, size_t size, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 flush_kernel_dcache_range((unsigned long) phys_to_virt(dma_handle) + offset, size);
}
