
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int * pt_root; } ;


 int * IOMMU_PTE_PAGE (int ) ;
 int IOMMU_PTE_PRESENT (int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_pagetable(struct protection_domain *domain)
{
 int i, j;
 u64 *p1, *p2, *p3;

 p1 = domain->pt_root;

 if (!p1)
  return;

 for (i = 0; i < 512; ++i) {
  if (!IOMMU_PTE_PRESENT(p1[i]))
   continue;

  p2 = IOMMU_PTE_PAGE(p1[i]);
  for (j = 0; j < 512; ++j) {
   if (!IOMMU_PTE_PRESENT(p2[j]))
    continue;
   p3 = IOMMU_PTE_PAGE(p2[j]);
   free_page((unsigned long)p3);
  }

  free_page((unsigned long)p2);
 }

 free_page((unsigned long)p1);

 domain->pt_root = ((void*)0);
}
