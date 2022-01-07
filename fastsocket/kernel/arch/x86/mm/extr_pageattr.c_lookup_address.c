
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned int PG_LEVEL_1G ;
 unsigned int PG_LEVEL_2M ;
 unsigned int PG_LEVEL_4K ;
 unsigned int PG_LEVEL_NONE ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

pte_t *lookup_address(unsigned long address, unsigned int *level)
{
 pgd_t *pgd = pgd_offset_k(address);
 pud_t *pud;
 pmd_t *pmd;

 *level = PG_LEVEL_NONE;

 if (pgd_none(*pgd))
  return ((void*)0);

 pud = pud_offset(pgd, address);
 if (pud_none(*pud))
  return ((void*)0);

 *level = PG_LEVEL_1G;
 if (pud_large(*pud) || !pud_present(*pud))
  return (pte_t *)pud;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd))
  return ((void*)0);

 *level = PG_LEVEL_2M;
 if (pmd_large(*pmd) || !pmd_present(*pmd))
  return (pte_t *)pmd;

 *level = PG_LEVEL_4K;

 return pte_offset_kernel(pmd, address);
}
