
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 unsigned long PAGE_SIZE ;
 int PG_arch_1 ;
 unsigned long compound_order (struct page*) ;
 int flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 struct page* pte_page (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
__ia64_sync_icache_dcache (pte_t pte)
{
 unsigned long addr;
 struct page *page;

 page = pte_page(pte);
 addr = (unsigned long) page_address(page);

 if (test_bit(PG_arch_1, &page->flags))
  return;

 flush_icache_range(addr, addr + (PAGE_SIZE << compound_order(page)));
 set_bit(PG_arch_1, &page->flags);
}
