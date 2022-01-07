
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_domain {struct dmar_domain* priv; } ;
struct dmar_domain {int dummy; } ;
struct dma_pte {int dummy; } ;
typedef int phys_addr_t ;


 unsigned long VTD_PAGE_SHIFT ;
 int dma_pte_addr (struct dma_pte*) ;
 struct dma_pte* pfn_to_dma_pte (struct dmar_domain*,unsigned long) ;

__attribute__((used)) static phys_addr_t intel_iommu_iova_to_phys(struct iommu_domain *domain,
         unsigned long iova)
{
 struct dmar_domain *dmar_domain = domain->priv;
 struct dma_pte *pte;
 u64 phys = 0;

 pte = pfn_to_dma_pte(dmar_domain, iova >> VTD_PAGE_SHIFT);
 if (pte)
  phys = dma_pte_addr(pte);

 return phys;
}
