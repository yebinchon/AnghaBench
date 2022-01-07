
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 struct page* __dma_alloc (struct device*,size_t,int *,int ) ;
 int page_to_phys (struct page*) ;
 void* phys_to_uncached (int ) ;

void *dma_alloc_coherent(struct device *dev, size_t size,
    dma_addr_t *handle, gfp_t gfp)
{
 struct page *page;
 void *ret = ((void*)0);

 page = __dma_alloc(dev, size, handle, gfp);
 if (page)
  ret = phys_to_uncached(page_to_phys(page));

 return ret;
}
