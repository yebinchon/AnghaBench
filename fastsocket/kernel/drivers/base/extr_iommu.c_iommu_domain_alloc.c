
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int (* domain_init ) (struct iommu_domain*) ;} ;


 int GFP_KERNEL ;
 TYPE_1__* iommu_ops ;
 int kfree (struct iommu_domain*) ;
 struct iommu_domain* kmalloc (int,int ) ;
 int stub1 (struct iommu_domain*) ;

struct iommu_domain *iommu_domain_alloc(void)
{
 struct iommu_domain *domain;
 int ret;

 domain = kmalloc(sizeof(*domain), GFP_KERNEL);
 if (!domain)
  return ((void*)0);

 ret = iommu_ops->domain_init(domain);
 if (ret)
  goto out_free;

 return domain;

out_free:
 kfree(domain);

 return ((void*)0);
}
