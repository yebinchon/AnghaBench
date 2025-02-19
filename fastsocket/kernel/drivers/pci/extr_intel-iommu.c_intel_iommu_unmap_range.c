
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {struct dmar_domain* priv; } ;
struct dmar_domain {unsigned long max_addr; } ;


 unsigned long VTD_PAGE_SHIFT ;
 int dma_pte_clear_range (struct dmar_domain*,unsigned long,unsigned long) ;

__attribute__((used)) static void intel_iommu_unmap_range(struct iommu_domain *domain,
        unsigned long iova, size_t size)
{
 struct dmar_domain *dmar_domain = domain->priv;

 if (!size)
  return;

 dma_pte_clear_range(dmar_domain, iova >> VTD_PAGE_SHIFT,
       (iova + size - 1) >> VTD_PAGE_SHIFT);

 if (dmar_domain->max_addr == iova + size)
  dmar_domain->max_addr = iova;
}
