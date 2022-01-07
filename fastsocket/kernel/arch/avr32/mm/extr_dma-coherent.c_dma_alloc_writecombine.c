
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int _PAGE_BUFFER ;
 struct page* __dma_alloc (struct device*,size_t,int *,int ) ;
 void* __ioremap (int ,size_t,int ) ;
 int page_to_phys (struct page*) ;

void *dma_alloc_writecombine(struct device *dev, size_t size,
        dma_addr_t *handle, gfp_t gfp)
{
 struct page *page;
 dma_addr_t phys;

 page = __dma_alloc(dev, size, handle, gfp);
 if (!page)
  return ((void*)0);

 phys = page_to_phys(page);
 *handle = phys;


 return __ioremap(phys, size, _PAGE_BUFFER);
}
