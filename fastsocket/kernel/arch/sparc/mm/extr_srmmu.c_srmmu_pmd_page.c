
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pmd_t ;


 int BUG () ;
 int PAGE_SHIFT ;
 int SRMMU_PTD_PMASK ;
 struct page* pfn_to_page (int) ;
 int pmd_val (int ) ;
 scalar_t__ srmmu_device_memory (int) ;

__attribute__((used)) static struct page *srmmu_pmd_page(pmd_t pmd)
{

 if (srmmu_device_memory(pmd_val(pmd)))
  BUG();
 return pfn_to_page((pmd_val(pmd) & SRMMU_PTD_PMASK) >> (PAGE_SHIFT-4));
}
