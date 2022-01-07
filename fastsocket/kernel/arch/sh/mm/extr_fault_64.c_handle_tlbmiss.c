
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ TASK_SIZE ;
 int __do_tlb_refill (unsigned long,unsigned long long,int *) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 unsigned long long pte_val (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

__attribute__((used)) static int handle_tlbmiss(struct mm_struct *mm,
     unsigned long long protection_flags,
     unsigned long long textaccess,
     unsigned long address)
{
 pgd_t *dir;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 pte_t entry;
 if (address >= (unsigned long) TASK_SIZE)

  return 0;

 dir = pgd_offset(mm, address);
 if (pgd_none(*dir) || !pgd_present(*dir))
  return 0;
 if (!pgd_present(*dir))
  return 0;

 pud = pud_offset(dir, address);
 if (pud_none(*pud) || !pud_present(*pud))
  return 0;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd) || !pmd_present(*pmd))
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
