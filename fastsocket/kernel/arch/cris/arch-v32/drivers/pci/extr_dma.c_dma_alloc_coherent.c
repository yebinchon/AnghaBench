
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int GFP_DMA ;
 int __GFP_DMA ;
 int __GFP_HIGHMEM ;
 scalar_t__ __get_free_pages (int,int) ;
 scalar_t__ dma_alloc_from_coherent (struct device*,size_t,int *,void**) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_phys (void*) ;

void *dma_alloc_coherent(struct device *dev, size_t size,
      dma_addr_t *dma_handle, gfp_t gfp)
{
 void *ret;
 int order = get_order(size);

 gfp &= ~(__GFP_DMA | __GFP_HIGHMEM);

 if (dma_alloc_from_coherent(dev, size, dma_handle, &ret))
  return ret;

 if (dev == ((void*)0) || (dev->coherent_dma_mask < 0xffffffff))
  gfp |= GFP_DMA;

 ret = (void *)__get_free_pages(gfp, order);

 if (ret != ((void*)0)) {
  memset(ret, 0, size);
  *dma_handle = virt_to_phys(ret);
 }
 return ret;
}
