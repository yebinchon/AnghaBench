
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PagePinned (struct page*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static bool xen_page_pinned(void *ptr)
{
 struct page *page = virt_to_page(ptr);

 return PagePinned(page);
}
