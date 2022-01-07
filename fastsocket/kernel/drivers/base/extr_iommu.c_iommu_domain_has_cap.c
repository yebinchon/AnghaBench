
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int (* domain_has_cap ) (struct iommu_domain*,unsigned long) ;} ;


 TYPE_1__* iommu_ops ;
 int stub1 (struct iommu_domain*,unsigned long) ;

int iommu_domain_has_cap(struct iommu_domain *domain,
    unsigned long cap)
{
 return iommu_ops->domain_has_cap(domain, cap);
}
