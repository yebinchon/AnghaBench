
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ set_pages_array_wb (struct page**,unsigned int) ;

__attribute__((used)) static void ttm_pages_put(struct page *pages[], unsigned npages)
{
 unsigned i;
 if (set_pages_array_wb(pages, npages))
  pr_err("Failed to set %d pages to wb!\n", npages);
 for (i = 0; i < npages; ++i)
  __free_page(pages[i]);
}
