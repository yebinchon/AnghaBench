
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 int CPU_FTR_COHERENT_ICACHE ;
 int CPU_FTR_NOEXECUTE ;
 int PG_arch_1 ;
 int _PAGE_HPTEFLAGS ;
 int __pte (int) ;
 int _tlbil_va (unsigned long,int ,int ,int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int flush_dcache_icache_page (struct page*) ;
 struct page* maybe_pte_to_page (int ) ;
 scalar_t__ pte_looks_normal (int ) ;
 int pte_val (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static pte_t set_pte_filter(pte_t pte, unsigned long addr)
{
 pte = __pte(pte_val(pte) & ~_PAGE_HPTEFLAGS);
 if (pte_looks_normal(pte) && !(cpu_has_feature(CPU_FTR_COHERENT_ICACHE) ||
           cpu_has_feature(CPU_FTR_NOEXECUTE))) {
  struct page *pg = maybe_pte_to_page(pte);
  if (!pg)
   return pte;
  if (!test_bit(PG_arch_1, &pg->flags)) {
   flush_dcache_icache_page(pg);
   set_bit(PG_arch_1, &pg->flags);
  }
 }
 return pte;
}
