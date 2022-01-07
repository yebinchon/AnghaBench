
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int mode; int * pt_root; } ;


 int * IOMMU_PTE_PAGE (int ) ;
 int IOMMU_PTE_PRESENT (int ) ;
 size_t PM_LEVEL_INDEX (int,unsigned long) ;
 scalar_t__ PM_PTE_LEVEL (int ) ;

__attribute__((used)) static u64 *fetch_pte(struct protection_domain *domain,
        unsigned long address, int map_size)
{
 int level;
 u64 *pte;

 level = domain->mode - 1;
 pte = &domain->pt_root[PM_LEVEL_INDEX(level, address)];

 while (level > map_size) {
  if (!IOMMU_PTE_PRESENT(*pte))
   return ((void*)0);

  level -= 1;

  pte = IOMMU_PTE_PAGE(*pte);
  pte = &pte[PM_LEVEL_INDEX(level, address)];

  if ((PM_PTE_LEVEL(*pte) == 0) && level != map_size) {
   pte = ((void*)0);
   break;
  }
 }

 return pte;
}
