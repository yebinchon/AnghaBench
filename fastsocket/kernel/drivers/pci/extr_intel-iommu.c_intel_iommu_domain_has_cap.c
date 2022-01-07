
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {struct dmar_domain* priv; } ;
struct dmar_domain {int iommu_snooping; } ;


 unsigned long IOMMU_CAP_CACHE_COHERENCY ;
 unsigned long IOMMU_CAP_INTR_REMAP ;
 int intr_remapping_enabled ;

__attribute__((used)) static int intel_iommu_domain_has_cap(struct iommu_domain *domain,
          unsigned long cap)
{
 struct dmar_domain *dmar_domain = domain->priv;

 if (cap == IOMMU_CAP_CACHE_COHERENCY)
  return dmar_domain->iommu_snooping;
 if (cap == IOMMU_CAP_INTR_REMAP)
  return intr_remapping_enabled;

 return 0;
}
