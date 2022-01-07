
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* iova_to_phys ) (struct iommu_domain*,unsigned long) ;} ;


 TYPE_1__* iommu_ops ;
 int stub1 (struct iommu_domain*,unsigned long) ;

phys_addr_t iommu_iova_to_phys(struct iommu_domain *domain,
          unsigned long iova)
{
 return iommu_ops->iova_to_phys(domain, iova);
}
