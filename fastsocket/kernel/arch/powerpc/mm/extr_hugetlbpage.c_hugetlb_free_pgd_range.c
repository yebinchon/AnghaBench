
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pgd_t ;
typedef int hugepd_t ;


 int BUG_ON (int) ;
 unsigned long HUGEPD_MASK (unsigned int) ;
 scalar_t__ HUGEPD_SIZE (unsigned int) ;
 scalar_t__ PUD_SHIFT ;
 int free_hugepte_range (struct mmu_gather*,int *,unsigned int) ;
 unsigned int get_slice_psize (int ,unsigned long) ;
 int hugetlb_free_pud_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int * mmu_huge_psizes ;
 scalar_t__ mmu_psize_to_shift (unsigned int) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;

void hugetlb_free_pgd_range(struct mmu_gather *tlb,
       unsigned long addr, unsigned long end,
       unsigned long floor, unsigned long ceiling)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long start;
 unsigned int psize = get_slice_psize(tlb->mm, addr);

 addr &= HUGEPD_MASK(psize);
 if (addr < floor) {
  addr += HUGEPD_SIZE(psize);
  if (!addr)
   return;
 }
 if (ceiling) {
  ceiling &= HUGEPD_MASK(psize);
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  end -= HUGEPD_SIZE(psize);
 if (addr > end - 1)
  return;

 start = addr;
 pgd = pgd_offset(tlb->mm, addr);
 do {
  psize = get_slice_psize(tlb->mm, addr);
  BUG_ON(!mmu_huge_psizes[psize]);
  next = pgd_addr_end(addr, end);
  if (mmu_psize_to_shift(psize) < PUD_SHIFT) {
   if (pgd_none_or_clear_bad(pgd))
    continue;
   hugetlb_free_pud_range(tlb, pgd, addr, next, floor, ceiling);
  } else {
   if (pgd_none(*pgd))
    continue;
   free_hugepte_range(tlb, (hugepd_t *)pgd, psize);
  }
 } while (pgd++, addr = next, addr != end);
}
