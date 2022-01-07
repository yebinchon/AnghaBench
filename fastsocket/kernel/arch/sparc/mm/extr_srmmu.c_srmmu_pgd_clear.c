
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgd_t ;


 int __pte (int ) ;
 int srmmu_set_pte (int *,int ) ;

__attribute__((used)) static inline void srmmu_pgd_clear(pgd_t * pgdp)
{ srmmu_set_pte((pte_t *)pgdp, __pte(0)); }
