
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_val (int ) ;
 int srmmu_swap (unsigned long*,int ) ;

__attribute__((used)) static inline void srmmu_set_pte(pte_t *ptep, pte_t pteval)
{
 srmmu_swap((unsigned long *)ptep, pte_val(pteval));
}
