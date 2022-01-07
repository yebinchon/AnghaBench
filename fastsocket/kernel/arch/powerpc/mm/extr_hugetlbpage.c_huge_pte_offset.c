
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


 unsigned int get_slice_psize (struct mm_struct*,unsigned long) ;
 int * hpmd_offset (int *,unsigned long,struct hstate*) ;
 int * hpud_offset (int *,unsigned long,struct hstate*) ;
 int * hugepte_offset (int *,unsigned long,struct hstate*) ;
 unsigned int mmu_psize_to_shift (unsigned int) ;
 int pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_none (int ) ;
 int pud_none (int ) ;
 struct hstate* size_to_hstate (unsigned long) ;

pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pg;
 pud_t *pu;
 pmd_t *pm;

 unsigned int psize;
 unsigned int shift;
 unsigned long sz;
 struct hstate *hstate;
 psize = get_slice_psize(mm, addr);
 shift = mmu_psize_to_shift(psize);
 sz = ((1UL) << shift);
 hstate = size_to_hstate(sz);

 addr &= hstate->mask;

 pg = pgd_offset(mm, addr);
 if (!pgd_none(*pg)) {
  pu = hpud_offset(pg, addr, hstate);
  if (!pud_none(*pu)) {
   pm = hpmd_offset(pu, addr, hstate);
   if (!pmd_none(*pm))
    return hugepte_offset((hugepd_t *)pm, addr,
            hstate);
  }
 }

 return ((void*)0);
}
