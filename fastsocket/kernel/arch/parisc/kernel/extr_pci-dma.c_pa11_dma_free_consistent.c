
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int PAGE_SHIFT ;
 scalar_t__ __va (int ) ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;
 int pcxl_free_range (unsigned long,size_t) ;
 int unmap_uncached_pages (unsigned long,size_t) ;

__attribute__((used)) static void pa11_dma_free_consistent (struct device *dev, size_t size, void *vaddr, dma_addr_t dma_handle)
{
 int order;

 order = get_order(size);
 size = 1 << (order + PAGE_SHIFT);
 unmap_uncached_pages((unsigned long)vaddr, size);
 pcxl_free_range((unsigned long)vaddr, size);
 free_pages((unsigned long)__va(dma_handle), order);
}
