
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PMD_SHIFT ;
 int PTRS_PER_PMD ;
 scalar_t__ srmmu_pgd_page (int ) ;

__attribute__((used)) static inline pmd_t *srmmu_pmd_offset(pgd_t * dir, unsigned long address)
{
 return (pmd_t *) srmmu_pgd_page(*dir) +
     ((address >> PMD_SHIFT) & (PTRS_PER_PMD - 1));
}
