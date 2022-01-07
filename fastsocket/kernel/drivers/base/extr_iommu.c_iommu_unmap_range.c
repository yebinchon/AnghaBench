
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int (* unmap ) (struct iommu_domain*,unsigned long,size_t) ;} ;


 TYPE_1__* iommu_ops ;
 int stub1 (struct iommu_domain*,unsigned long,size_t) ;

void iommu_unmap_range(struct iommu_domain *domain, unsigned long iova,
        size_t size)
{
 iommu_ops->unmap(domain, iova, size);
}
