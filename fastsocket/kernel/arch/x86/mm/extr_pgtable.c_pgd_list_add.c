
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
typedef int pgd_t ;


 int list_add (int *,int *) ;
 int pgd_list ;
 struct page* virt_to_page (int *) ;

__attribute__((used)) static inline void pgd_list_add(pgd_t *pgd)
{
 struct page *page = virt_to_page(pgd);

 list_add(&page->lru, &pgd_list);
}
