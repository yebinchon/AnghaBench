
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 int get_user_pages_fast (unsigned long,int,int,struct page**) ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static unsigned long get_pfn(unsigned long virtpfn, int write)
{
 struct page *page;


 if (get_user_pages_fast(virtpfn << PAGE_SHIFT, 1, write, &page) == 1)
  return page_to_pfn(page);


 return -1UL;
}
