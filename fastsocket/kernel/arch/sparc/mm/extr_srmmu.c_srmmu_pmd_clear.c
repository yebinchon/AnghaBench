
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_3__ {int * pmdv; } ;
typedef TYPE_1__ pmd_t ;


 int PTRS_PER_PTE ;
 int SRMMU_REAL_PTRS_PER_PTE ;
 int __pte (int ) ;
 int srmmu_set_pte (int *,int ) ;

__attribute__((used)) static inline void srmmu_pmd_clear(pmd_t *pmdp) {
 int i;
 for (i = 0; i < PTRS_PER_PTE/SRMMU_REAL_PTRS_PER_PTE; i++)
  srmmu_set_pte((pte_t *)&pmdp->pmdv[i], __pte(0));
}
