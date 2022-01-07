
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 int kmemcheck_mark_unallocated (int ,int ) ;
 int page_address (struct page*) ;

void kmemcheck_mark_unallocated_pages(struct page *p, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; ++i)
  kmemcheck_mark_unallocated(page_address(&p[i]), PAGE_SIZE);
}
