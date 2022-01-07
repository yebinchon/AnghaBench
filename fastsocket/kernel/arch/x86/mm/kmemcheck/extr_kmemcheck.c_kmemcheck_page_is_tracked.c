
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kmemcheck_pte_lookup (unsigned long) ;
 scalar_t__ page_address (struct page*) ;

bool kmemcheck_page_is_tracked(struct page *p)
{

 return kmemcheck_pte_lookup((unsigned long) page_address(p));
}
