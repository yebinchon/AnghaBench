
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int __pte (int ) ;
 int srmmu_set_pte (int *,int ) ;

__attribute__((used)) static inline void srmmu_pte_clear(pte_t *ptep)
{ srmmu_set_pte(ptep, __pte(0)); }
