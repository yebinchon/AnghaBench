
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
typedef int pte_t ;
struct TYPE_3__ {int * pmdv; } ;
typedef TYPE_1__ pmd_t ;


 int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 unsigned long SRMMU_ET_PTD ;
 int SRMMU_REAL_PTRS_PER_PTE ;
 int page_to_pfn (struct page*) ;
 int srmmu_set_pte (int *,unsigned long) ;

__attribute__((used)) static void srmmu_pmd_populate(pmd_t *pmdp, struct page *ptep)
{
 unsigned long ptp;
 int i;

 ptp = page_to_pfn(ptep) << (PAGE_SHIFT-4);
 for (i = 0; i < PTRS_PER_PTE/SRMMU_REAL_PTRS_PER_PTE; i++) {
  srmmu_set_pte((pte_t *)&pmdp->pmdv[i], SRMMU_ET_PTD | ptp);
  ptp += (SRMMU_REAL_PTRS_PER_PTE*sizeof(pte_t) >> 4);
 }
}
