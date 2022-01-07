
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int huge_pte_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 unsigned long HPAGE_MASK ;
 int HUGETLB_PAGE_ORDER ;
 scalar_t__ PAGE_SIZE ;
 int pte_clear (struct mm_struct*,unsigned long,int *) ;
 scalar_t__ pte_present (int ) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
         pte_t *ptep)
{
 pte_t entry;
 int i;

 entry = *ptep;
 if (pte_present(entry))
  mm->context.huge_pte_count--;

 addr &= HPAGE_MASK;

 for (i = 0; i < (1 << HUGETLB_PAGE_ORDER); i++) {
  pte_clear(mm, addr, ptep);
  addr += PAGE_SIZE;
  ptep++;
 }

 return entry;
}
