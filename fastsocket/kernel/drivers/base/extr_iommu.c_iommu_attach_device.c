
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* attach_dev ) (struct iommu_domain*,struct device*) ;} ;


 TYPE_1__* iommu_ops ;
 int stub1 (struct iommu_domain*,struct device*) ;

int iommu_attach_device(struct iommu_domain *domain, struct device *dev)
{
 return iommu_ops->attach_dev(domain, dev);
}
