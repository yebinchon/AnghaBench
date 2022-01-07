
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int gaw; struct dma_pte* pgd; scalar_t__ max_addr; scalar_t__ iommu_snooping; scalar_t__ iommu_coherency; scalar_t__ iommu_count; int devices; int agaw; int iommu_lock; int iovad; } ;
struct dma_pte {int dummy; } ;


 int DMA_32BIT_PFN ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 scalar_t__ alloc_pgtable_page () ;
 int domain_flush_cache (struct dmar_domain*,struct dma_pte*,int ) ;
 int domain_reserve_special_ranges (struct dmar_domain*) ;
 int guestwidth_to_adjustwidth (int) ;
 int init_iova_domain (int *,int ) ;
 int spin_lock_init (int *) ;
 int width_to_agaw (int) ;

__attribute__((used)) static int md_domain_init(struct dmar_domain *domain, int guest_width)
{
 int adjust_width;

 init_iova_domain(&domain->iovad, DMA_32BIT_PFN);
 spin_lock_init(&domain->iommu_lock);

 domain_reserve_special_ranges(domain);


 domain->gaw = guest_width;
 adjust_width = guestwidth_to_adjustwidth(guest_width);
 domain->agaw = width_to_agaw(adjust_width);

 INIT_LIST_HEAD(&domain->devices);

 domain->iommu_count = 0;
 domain->iommu_coherency = 0;
 domain->iommu_snooping = 0;
 domain->max_addr = 0;


 domain->pgd = (struct dma_pte *)alloc_pgtable_page();
 if (!domain->pgd)
  return -ENOMEM;
 domain_flush_cache(domain, domain->pgd, PAGE_SIZE);
 return 0;
}
