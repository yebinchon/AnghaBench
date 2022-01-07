
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 unsigned long HPTE_R_N ;
 unsigned long PAGE_SIZE ;
 int PG_arch_1 ;
 int PageReserved (struct page*) ;
 int __flush_dcache_icache (int ) ;
 int page_address (struct page*) ;
 int pfn_valid (int ) ;
 struct page* pte_page (int ) ;
 int pte_pfn (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static unsigned int hash_huge_page_do_lazy_icache(unsigned long rflags,
     pte_t pte, int trap, unsigned long sz)
{
 struct page *page;
 int i;

 if (!pfn_valid(pte_pfn(pte)))
  return rflags;

 page = pte_page(pte);


 if (!test_bit(PG_arch_1, &page->flags) && !PageReserved(page)) {
  if (trap == 0x400) {
   for (i = 0; i < (sz / PAGE_SIZE); i++)
    __flush_dcache_icache(page_address(page+i));
   set_bit(PG_arch_1, &page->flags);
  } else {
   rflags |= HPTE_R_N;
  }
 }
 return rflags;
}
