
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageHighMem (struct page*) ;
 void* kmap_high (struct page*) ;
 int might_sleep () ;
 void* page_address (struct page*) ;

void *kmap(struct page *page)
{
 might_sleep();
 if (!PageHighMem(page))
  return page_address(page);
 return kmap_high(page);
}
