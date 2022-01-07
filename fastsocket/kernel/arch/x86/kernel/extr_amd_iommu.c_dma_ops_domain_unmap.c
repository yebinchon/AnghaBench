
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct dma_ops_domain {unsigned long aperture_size; struct aperture_range** aperture; } ;
struct aperture_range {unsigned long long** pte_pages; } ;
struct amd_iommu {int dummy; } ;


 size_t APERTURE_PAGE_INDEX (unsigned long) ;
 size_t APERTURE_RANGE_INDEX (unsigned long) ;
 int PM_LEVEL_INDEX (int ,unsigned long) ;
 int WARN_ON (int) ;

__attribute__((used)) static void dma_ops_domain_unmap(struct amd_iommu *iommu,
     struct dma_ops_domain *dom,
     unsigned long address)
{
 struct aperture_range *aperture;
 u64 *pte;

 if (address >= dom->aperture_size)
  return;

 aperture = dom->aperture[APERTURE_RANGE_INDEX(address)];
 if (!aperture)
  return;

 pte = aperture->pte_pages[APERTURE_PAGE_INDEX(address)];
 if (!pte)
  return;

 pte += PM_LEVEL_INDEX(0, address);

 WARN_ON(!*pte);

 *pte = 0ULL;
}
