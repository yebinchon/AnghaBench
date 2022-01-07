
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 unsigned long LARGE_PMD_SIZE ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PTRS_PER_PTE ;
 int _PAGE_DIRTY ;
 int do_mm_track_phys (void*) ;
 int do_mm_track_pte (int *) ;
 int pmd_large (int ) ;
 int pmd_present (int ) ;
 int * pte_offset_kernel (int *,int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_val (int ) ;
 scalar_t__ unlikely (int ) ;

void do_mm_track_pmd(void *val)
{
 int i;
 pte_t *pte;
 pmd_t *pmd = (pmd_t *)val;

 if (!pmd_present(*pmd))
  return;

 if (unlikely(pmd_large(*pmd))) {
  unsigned long addr, end;

  if (!(pte_val(*(pte_t *)val) & _PAGE_DIRTY))
   return;

  addr = pte_pfn(*(pte_t *)val) << PAGE_SHIFT;
  end = addr + LARGE_PMD_SIZE;

  while (addr < end) {
   do_mm_track_phys((void *)addr);
   addr += PAGE_SIZE;
  }
  return;
 }

 pte = pte_offset_kernel(pmd, 0);

 for (i = 0; i < PTRS_PER_PTE; i++, pte++)
  do_mm_track_pte(pte);
}
