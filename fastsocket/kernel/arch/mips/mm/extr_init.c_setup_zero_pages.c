
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 int SetPageReserved (struct page*) ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,unsigned int) ;
 scalar_t__ cpu_has_vce ;
 scalar_t__ empty_zero_page ;
 int panic (char*) ;
 int split_page (struct page*,unsigned int) ;
 struct page* virt_to_page (void*) ;
 unsigned long zero_page_mask ;

unsigned long setup_zero_pages(void)
{
 unsigned int order;
 unsigned long size;
 struct page *page;

 if (cpu_has_vce)
  order = 3;
 else
  order = 0;

 empty_zero_page = __get_free_pages(GFP_KERNEL | __GFP_ZERO, order);
 if (!empty_zero_page)
  panic("Oh boy, that early out of memory?");

 page = virt_to_page((void *)empty_zero_page);
 split_page(page, order);
 while (page < virt_to_page((void *)(empty_zero_page + (PAGE_SIZE << order)))) {
  SetPageReserved(page);
  page++;
 }

 size = PAGE_SIZE << order;
 zero_page_mask = (size - 1) & PAGE_MASK;

 return 1UL << order;
}
