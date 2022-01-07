
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ page_address (struct page*) ;
 int set_memory_nx (unsigned long,int) ;

int set_pages_nx(struct page *page, int numpages)
{
 unsigned long addr = (unsigned long)page_address(page);

 return set_memory_nx(addr, numpages);
}
