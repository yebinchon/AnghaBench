
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int * pgd; } ;


 int BUG_ON (int) ;
 TYPE_1__ init_mm ;
 unsigned int pgd_index (unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_page (int ) ;
 int pmd_present (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static inline pmd_t *vmalloc_sync_one(pgd_t *pgd, unsigned long address)
{
 unsigned index = pgd_index(address);
 pgd_t *pgd_k;
 pud_t *pud, *pud_k;
 pmd_t *pmd, *pmd_k;

 pgd += index;
 pgd_k = init_mm.pgd + index;

 if (!pgd_present(*pgd_k))
  return ((void*)0);

 pud = pud_offset(pgd, address);
 pud_k = pud_offset(pgd_k, address);
 if (!pud_present(*pud_k))
  return ((void*)0);

 pmd = pmd_offset(pud, address);
 pmd_k = pmd_offset(pud_k, address);
 if (!pmd_present(*pmd_k))
  return ((void*)0);

 if (!pmd_present(*pmd))
  set_pmd(pmd, *pmd_k);
 else {





  BUG_ON(pmd_page(*pmd) != pmd_page(*pmd_k));
  return ((void*)0);
 }

 return pmd_k;
}
