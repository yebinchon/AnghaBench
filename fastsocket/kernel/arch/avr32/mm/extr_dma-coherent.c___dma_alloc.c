
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 int __GFP_COMP ;
 int __free_page (struct page*) ;
 struct page* alloc_pages (int ,int) ;
 int get_order (size_t) ;
 int invalidate_dcache_region (int ,size_t) ;
 int page_to_bus (struct page*) ;
 int page_to_phys (struct page*) ;
 int phys_to_virt (int ) ;
 int split_page (struct page*,int) ;

__attribute__((used)) static struct page *__dma_alloc(struct device *dev, size_t size,
    dma_addr_t *handle, gfp_t gfp)
{
 struct page *page, *free, *end;
 int order;






 gfp &= ~(__GFP_COMP);

 size = PAGE_ALIGN(size);
 order = get_order(size);

 page = alloc_pages(gfp, order);
 if (!page)
  return ((void*)0);
 split_page(page, order);
 invalidate_dcache_region(phys_to_virt(page_to_phys(page)), size);

 *handle = page_to_bus(page);
 free = page + (size >> PAGE_SHIFT);
 end = page + (1 << order);




 while (free < end) {
  __free_page(free);
  free++;
 }

 return page;
}
