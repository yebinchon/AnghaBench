
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_3__ {int* pmdv; } ;
typedef TYPE_1__ pmd_t ;


 unsigned long PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 int SRMMU_PTD_PMASK ;
 void* __nocache_va (int) ;

__attribute__((used)) static inline pte_t *srmmu_pte_offset(pmd_t * dir, unsigned long address)
{
 void *pte;

 pte = __nocache_va((dir->pmdv[0] & SRMMU_PTD_PMASK) << 4);
 return (pte_t *) pte +
     ((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1));
}
