
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int ) ;
 int CPA_PAGES_ARRAY ;
 int PAGE_SIZE ;
 int _PAGE_PRESENT ;
 int __cpa_flush_all ;
 int clflush_cache_range (void*,int ) ;
 int irqs_disabled () ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int on_each_cpu (int ,void*,int) ;
 scalar_t__ page_address (struct page*) ;
 int pte_val (int ) ;

__attribute__((used)) static void cpa_flush_array(unsigned long *start, int numpages, int cache,
       int in_flags, struct page **pages)
{
 unsigned int i, level;
 unsigned long do_wbinvd = cache && numpages >= 1024;

 BUG_ON(irqs_disabled());

 on_each_cpu(__cpa_flush_all, (void *) do_wbinvd, 1);

 if (!cache || do_wbinvd)
  return;







 for (i = 0; i < numpages; i++) {
  unsigned long addr;
  pte_t *pte;

  if (in_flags & CPA_PAGES_ARRAY)
   addr = (unsigned long)page_address(pages[i]);
  else
   addr = start[i];

  pte = lookup_address(addr, &level);




  if (pte && (pte_val(*pte) & _PAGE_PRESENT))
   clflush_cache_range((void *)addr, PAGE_SIZE);
 }
}
