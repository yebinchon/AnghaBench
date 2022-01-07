
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 int SetPageReserved (struct page*) ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 scalar_t__ empty_zero_page ;
 int panic (char*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static unsigned long setup_zero_page(void)
{
 struct page *page;

 empty_zero_page = __get_free_pages(GFP_KERNEL | __GFP_ZERO, 0);
 if (!empty_zero_page)
  panic("Oh boy, that early out of memory?");

 page = virt_to_page((void *) empty_zero_page);
 SetPageReserved(page);

 return 1UL;
}
