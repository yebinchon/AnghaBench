
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static pte_t *lookup_pte(struct mm_struct *mm, unsigned long address)
{
 pgd_t *dir;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 pte_t entry;

 dir = pgd_offset(mm, address);
 if (pgd_none(*dir))
  return ((void*)0);

 pud = pud_offset(dir, address);
 if (pud_none(*pud))
  return ((void*)0);

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd))
  return ((void*)0);

 pte = pte_offset_kernel(pmd, address);
 entry = *pte;
 if (pte_none(entry) || !pte_present(entry))
  return ((void*)0);

 return pte;
}
