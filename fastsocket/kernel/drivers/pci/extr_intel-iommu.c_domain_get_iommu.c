
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int dummy; } ;
struct dmar_domain {int flags; int iommu_bmp; } ;


 int BUG_ON (int) ;
 int DOMAIN_FLAG_STATIC_IDENTITY ;
 int DOMAIN_FLAG_VIRTUAL_MACHINE ;
 int find_first_bit (int ,int) ;
 struct intel_iommu** g_iommus ;
 int g_num_of_iommus ;

__attribute__((used)) static struct intel_iommu *domain_get_iommu(struct dmar_domain *domain)
{
 int iommu_id;


 BUG_ON(domain->flags & DOMAIN_FLAG_VIRTUAL_MACHINE);
 BUG_ON(domain->flags & DOMAIN_FLAG_STATIC_IDENTITY);

 iommu_id = find_first_bit(domain->iommu_bmp, g_num_of_iommus);
 if (iommu_id < 0 || iommu_id >= g_num_of_iommus)
  return ((void*)0);

 return g_iommus[iommu_id];
}
