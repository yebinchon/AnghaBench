
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int GFP_DMA ;
 void* swiotlb_alloc_coherent (struct device*,size_t,int *,int ) ;

__attribute__((used)) static void *ia64_swiotlb_alloc_coherent(struct device *dev, size_t size,
      dma_addr_t *dma_handle, gfp_t gfp)
{
 if (dev->coherent_dma_mask != DMA_BIT_MASK(64))
  gfp |= GFP_DMA;
 return swiotlb_alloc_coherent(dev, size, dma_handle, gfp);
}
