
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct hstate {unsigned long mask; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int hugepd_t ;


 int BUG_ON (int) ;
 scalar_t__ __hugepte_alloc (struct mm_struct*,int *,unsigned long,unsigned int) ;
 unsigned int get_slice_psize (struct mm_struct*,unsigned long) ;
 int * hpmd_alloc (struct mm_struct*,int *,unsigned long,struct hstate*) ;
 int * hpud_alloc (struct mm_struct*,int *,unsigned long,struct hstate*) ;
 scalar_t__ hugepd_none (int ) ;
 int * hugepte_offset (int *,unsigned long,struct hstate*) ;
 int * mmu_huge_psizes ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 struct hstate* size_to_hstate (unsigned long) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
   unsigned long addr, unsigned long sz, bool *shared)
{
 pgd_t *pg;
 pud_t *pu;
 pmd_t *pm;
 hugepd_t *hpdp = ((void*)0);
 struct hstate *hstate;
 unsigned int psize;
 hstate = size_to_hstate(sz);

 psize = get_slice_psize(mm, addr);
 BUG_ON(!mmu_huge_psizes[psize]);

 addr &= hstate->mask;

 pg = pgd_offset(mm, addr);
 pu = hpud_alloc(mm, pg, addr, hstate);

 if (pu) {
  pm = hpmd_alloc(mm, pu, addr, hstate);
  if (pm)
   hpdp = (hugepd_t *)pm;
 }

 if (! hpdp)
  return ((void*)0);

 if (hugepd_none(*hpdp) && __hugepte_alloc(mm, hpdp, addr, psize))
  return ((void*)0);

 return hugepte_offset(hpdp, addr, hstate);
}
