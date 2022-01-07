
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int* dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int GFP_DMA ;
 int __GFP_DMA ;
 int __GFP_HIGHMEM ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_phys (void*) ;

void *dma_alloc_coherent(struct device *dev, size_t size,
      dma_addr_t *dma_handle, gfp_t gfp)
{
 void *ret;

 gfp &= ~(__GFP_DMA | __GFP_HIGHMEM);

 if (dev == ((void*)0) || (*dev->dma_mask < 0xffffffff))
  gfp |= GFP_DMA;
 ret = (void *)__get_free_pages(gfp, get_order(size));

 if (ret != ((void*)0)) {
  memset(ret, 0, size);
  *dma_handle = virt_to_phys(ret);
 }
 return ret;
}
