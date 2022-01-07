
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
typedef int pgd_t ;


 scalar_t__ page_private (struct page*) ;
 int set_page_private (struct page*,unsigned long) ;
 struct page* virt_to_page (int *) ;

__attribute__((used)) static inline void pgd_list_del(pgd_t *pgd)
{
 struct page *next, **pprev, *page = virt_to_page(pgd);
 next = (struct page *) page->index;
 pprev = (struct page **) page_private(page);
 *pprev = next;
 if (next)
  set_page_private(next, (unsigned long) pprev);
}
