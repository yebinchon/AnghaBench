
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int invalidate_dcache_range (unsigned long,unsigned long) ;

dma_addr_t
dma_map_single(struct device *dev, void *ptr, size_t size,
        enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);

 invalidate_dcache_range((unsigned long)ptr,
   (unsigned long)ptr + size);

 return (dma_addr_t) ptr;
}
