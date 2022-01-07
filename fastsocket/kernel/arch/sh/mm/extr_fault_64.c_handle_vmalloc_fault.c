
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int __do_tlb_refill (unsigned long,unsigned long long,int *) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 unsigned long pte_val (int ) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static int handle_vmalloc_fault(struct mm_struct *mm,
    unsigned long protection_flags,
                                unsigned long long textaccess,
    unsigned long address)
{
 pgd_t *dir;
 pud_t *pud;
 pmd_t *pmd;
 static pte_t *pte;
 pte_t entry;

 dir = pgd_offset_k(address);

 pud = pud_offset(dir, address);
 if (pud_none_or_clear_bad(pud))
  return 0;

 pmd = pmd_offset(pud, address);
 if (pmd_none_or_clear_bad(pmd))
  return 0;

 pte = pte_offset_kernel(pmd, address);
 entry = *pte;

 if (pte_none(entry) || !pte_present(entry))
  return 0;
 if ((pte_val(entry) & protection_flags) != protection_flags)
  return 0;

        __do_tlb_refill(address, textaccess, pte);

 return 1;
}
