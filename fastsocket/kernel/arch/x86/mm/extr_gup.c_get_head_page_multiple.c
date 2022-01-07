
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int VM_BUG_ON (int) ;
 int atomic_add (int,int *) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ page_count (struct page*) ;

__attribute__((used)) static inline void get_head_page_multiple(struct page *page, int nr)
{
 VM_BUG_ON(page != compound_head(page));
 VM_BUG_ON(page_count(page) == 0);
 atomic_add(nr, &page->_count);
}
