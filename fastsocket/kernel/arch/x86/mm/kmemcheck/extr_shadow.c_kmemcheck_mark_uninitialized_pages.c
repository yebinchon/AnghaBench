
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 int kmemcheck_mark_uninitialized (int ,int ) ;
 int page_address (struct page*) ;

void kmemcheck_mark_uninitialized_pages(struct page *p, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; ++i)
  kmemcheck_mark_uninitialized(page_address(&p[i]), PAGE_SIZE);
}
