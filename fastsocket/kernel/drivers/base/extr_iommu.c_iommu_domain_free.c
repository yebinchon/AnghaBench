
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int (* domain_destroy ) (struct iommu_domain*) ;} ;


 TYPE_1__* iommu_ops ;
 int kfree (struct iommu_domain*) ;
 int stub1 (struct iommu_domain*) ;

void iommu_domain_free(struct iommu_domain *domain)
{
 iommu_ops->domain_destroy(domain);
 kfree(domain);
}
