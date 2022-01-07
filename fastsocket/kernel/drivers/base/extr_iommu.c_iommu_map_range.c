
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* map ) (struct iommu_domain*,unsigned long,int ,size_t,int) ;} ;


 TYPE_1__* iommu_ops ;
 int stub1 (struct iommu_domain*,unsigned long,int ,size_t,int) ;

int iommu_map_range(struct iommu_domain *domain, unsigned long iova,
      phys_addr_t paddr, size_t size, int prot)
{
 return iommu_ops->map(domain, iova, paddr, size, prot);
}
