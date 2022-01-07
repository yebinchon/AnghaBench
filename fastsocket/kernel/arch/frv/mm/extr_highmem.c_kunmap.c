
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG () ;
 int PageHighMem (struct page*) ;
 scalar_t__ in_interrupt () ;
 int kunmap_high (struct page*) ;

void kunmap(struct page *page)
{
 if (in_interrupt())
  BUG();
 if (!PageHighMem(page))
  return;
 kunmap_high(page);
}
