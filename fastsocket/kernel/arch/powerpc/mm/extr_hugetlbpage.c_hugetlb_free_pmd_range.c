
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int hugepd_t ;


 unsigned long PUD_MASK ;
 int free_hugepte_range (struct mmu_gather*,int *,unsigned int) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_free_tlb (struct mmu_gather*,int *,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pud_clear (int *) ;

__attribute__((used)) static void hugetlb_free_pmd_range(struct mmu_gather *tlb, pud_t *pud,
       unsigned long addr, unsigned long end,
       unsigned long floor, unsigned long ceiling,
       unsigned int psize)
{
 pmd_t *pmd;
 unsigned long next;
 unsigned long start;

 start = addr;
 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_none(*pmd))
   continue;
  free_hugepte_range(tlb, (hugepd_t *)pmd, psize);
 } while (pmd++, addr = next, addr != end);

 start &= PUD_MASK;
 if (start < floor)
  return;
 if (ceiling) {
  ceiling &= PUD_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  return;

 pmd = pmd_offset(pud, start);
 pud_clear(pud);
 pmd_free_tlb(tlb, pmd, start);
}
