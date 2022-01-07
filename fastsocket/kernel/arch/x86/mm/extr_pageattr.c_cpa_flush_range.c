
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int BUG_ON (int ) ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 scalar_t__ PAGE_SIZE ;
 int WARN_ON (int) ;
 int _PAGE_PRESENT ;
 int __cpa_flush_range ;
 int clflush_cache_range (void*,scalar_t__) ;
 int irqs_disabled () ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int on_each_cpu (int ,int *,int) ;
 int pte_val (int ) ;

__attribute__((used)) static void cpa_flush_range(unsigned long start, int numpages, int cache)
{
 unsigned int i, level;
 unsigned long addr;

 BUG_ON(irqs_disabled());
 WARN_ON(PAGE_ALIGN(start) != start);

 on_each_cpu(__cpa_flush_range, ((void*)0), 1);

 if (!cache)
  return;







 for (i = 0, addr = start; i < numpages; i++, addr += PAGE_SIZE) {
  pte_t *pte = lookup_address(addr, &level);




  if (pte && (pte_val(*pte) & _PAGE_PRESENT))
   clflush_cache_range((void *) addr, PAGE_SIZE);
 }
}
