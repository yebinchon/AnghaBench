
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct hstate {unsigned long mask; } ;
typedef int pte_t ;


 int _PAGE_HPTEFLAGS ;
 int __pte (int) ;
 unsigned int get_slice_psize (struct mm_struct*,unsigned long) ;
 unsigned int mmu_psize_to_shift (unsigned int) ;
 scalar_t__ pte_present (int ) ;
 int pte_update (struct mm_struct*,unsigned long,int *,unsigned long,int) ;
 int pte_val (int ) ;
 struct hstate* size_to_hstate (unsigned long) ;

void set_huge_pte_at(struct mm_struct *mm, unsigned long addr,
       pte_t *ptep, pte_t pte)
{
 if (pte_present(*ptep)) {





  unsigned int psize = get_slice_psize(mm, addr);
  unsigned int shift = mmu_psize_to_shift(psize);
  unsigned long sz = ((1UL) << shift);
  struct hstate *hstate = size_to_hstate(sz);
  pte_update(mm, addr & hstate->mask, ptep, ~0UL, 1);
 }
 *ptep = __pte(pte_val(pte) & ~_PAGE_HPTEFLAGS);
}
