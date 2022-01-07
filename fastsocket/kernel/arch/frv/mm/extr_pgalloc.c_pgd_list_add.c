
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; } ;
typedef int pgd_t ;


 struct page* pgd_list ;
 int set_page_private (struct page*,unsigned long) ;
 struct page* virt_to_page (int *) ;

__attribute__((used)) static inline void pgd_list_add(pgd_t *pgd)
{
 struct page *page = virt_to_page(pgd);
 page->index = (unsigned long) pgd_list;
 if (pgd_list)
  set_page_private(pgd_list, (unsigned long) &page->index);
 pgd_list = page;
 set_page_private(page, (unsigned long)&pgd_list);
}
