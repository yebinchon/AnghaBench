
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int PAGE_SHIFT ;
 int SRMMU_PTE_PMASK ;
 int pte_val (int ) ;
 scalar_t__ srmmu_device_memory (int) ;

__attribute__((used)) static unsigned long srmmu_pte_pfn(pte_t pte)
{
 if (srmmu_device_memory(pte_val(pte))) {





  return ~0UL;
 }
 return (pte_val(pte) & SRMMU_PTE_PMASK) >> (PAGE_SHIFT-4);
}
