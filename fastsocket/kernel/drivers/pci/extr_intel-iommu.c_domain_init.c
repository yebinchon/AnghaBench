
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int ecap; int cap; } ;
struct dmar_domain {int gaw; int agaw; int iommu_coherency; int iommu_snooping; int iommu_count; struct dma_pte* pgd; int devices; int iommu_lock; int iovad; } ;
struct dma_pte {int dummy; } ;


 int DMA_32BIT_PFN ;
 int ENODEV ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int __iommu_flush_cache (struct intel_iommu*,struct dma_pte*,int ) ;
 scalar_t__ alloc_pgtable_page () ;
 int cap_mgaw (int ) ;
 unsigned long cap_sagaw (int ) ;
 struct intel_iommu* domain_get_iommu (struct dmar_domain*) ;
 int domain_reserve_special_ranges (struct dmar_domain*) ;
 scalar_t__ ecap_coherent (int ) ;
 scalar_t__ ecap_sc_support (int ) ;
 int find_next_bit (unsigned long*,int,int) ;
 int guestwidth_to_adjustwidth (int) ;
 int init_iova_domain (int *,int ) ;
 int pr_debug (char*,int) ;
 int spin_lock_init (int *) ;
 int test_bit (int,unsigned long*) ;
 int width_to_agaw (int) ;

__attribute__((used)) static int domain_init(struct dmar_domain *domain, int guest_width)
{
 struct intel_iommu *iommu;
 int adjust_width, agaw;
 unsigned long sagaw;

 init_iova_domain(&domain->iovad, DMA_32BIT_PFN);
 spin_lock_init(&domain->iommu_lock);

 domain_reserve_special_ranges(domain);


 iommu = domain_get_iommu(domain);
 if (guest_width > cap_mgaw(iommu->cap))
  guest_width = cap_mgaw(iommu->cap);
 domain->gaw = guest_width;
 adjust_width = guestwidth_to_adjustwidth(guest_width);
 agaw = width_to_agaw(adjust_width);
 sagaw = cap_sagaw(iommu->cap);
 if (!test_bit(agaw, &sagaw)) {

  pr_debug("IOMMU: hardware doesn't support agaw %d\n", agaw);
  agaw = find_next_bit(&sagaw, 5, agaw);
  if (agaw >= 5)
   return -ENODEV;
 }
 domain->agaw = agaw;
 INIT_LIST_HEAD(&domain->devices);

 if (ecap_coherent(iommu->ecap))
  domain->iommu_coherency = 1;
 else
  domain->iommu_coherency = 0;

 if (ecap_sc_support(iommu->ecap))
  domain->iommu_snooping = 1;
 else
  domain->iommu_snooping = 0;

 domain->iommu_count = 1;


 domain->pgd = (struct dma_pte *)alloc_pgtable_page();
 if (!domain->pgd)
  return -ENOMEM;
 __iommu_flush_cache(iommu, domain->pgd, PAGE_SIZE);
 return 0;
}
