
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int dummy; } ;


 int domain_update_iommu_coherency (struct dmar_domain*) ;
 int domain_update_iommu_snooping (struct dmar_domain*) ;

__attribute__((used)) static void domain_update_iommu_cap(struct dmar_domain *domain)
{
 domain_update_iommu_coherency(domain);
 domain_update_iommu_snooping(domain);
}
