
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int mode; int * pt_root; } ;
typedef int gfp_t ;


 int * IOMMU_PTE_PAGE (int ) ;
 int IOMMU_PTE_PRESENT (int ) ;
 size_t PM_LEVEL_INDEX (int,unsigned long) ;
 int PM_LEVEL_PDE (int,int ) ;
 unsigned long PM_LEVEL_SIZE (int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int increase_address_space (struct protection_domain*,int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static u64 *alloc_pte(struct protection_domain *domain,
        unsigned long address,
        int end_lvl,
        u64 **pte_page,
        gfp_t gfp)
{
 u64 *pte, *page;
 int level;

 while (address > PM_LEVEL_SIZE(domain->mode))
  increase_address_space(domain, gfp);

 level = domain->mode - 1;
 pte = &domain->pt_root[PM_LEVEL_INDEX(level, address)];

 while (level > end_lvl) {
  if (!IOMMU_PTE_PRESENT(*pte)) {
   page = (u64 *)get_zeroed_page(gfp);
   if (!page)
    return ((void*)0);
   *pte = PM_LEVEL_PDE(level, virt_to_phys(page));
  }

  level -= 1;

  pte = IOMMU_PTE_PAGE(*pte);

  if (pte_page && level == end_lvl)
   *pte_page = pte;

  pte = &pte[PM_LEVEL_INDEX(level, address)];
 }

 return pte;
}
