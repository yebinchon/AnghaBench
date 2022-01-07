
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int SRMMU_ET_PTD ;
 int __nocache_pa (unsigned long) ;
 int srmmu_set_pte (int *,int) ;

__attribute__((used)) static inline void srmmu_pgd_set(pgd_t * pgdp, pmd_t * pmdp)
{ srmmu_set_pte((pte_t *)pgdp, (SRMMU_ET_PTD | (__nocache_pa((unsigned long) pmdp) >> 4))); }
