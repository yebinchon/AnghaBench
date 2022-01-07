
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_functions {int dummy; } ;


 int EBUSY ;
 struct iommu_functions const* arch_iommu ;

int install_iommu_arch(const struct iommu_functions *ops)
{
 if (arch_iommu)
  return -EBUSY;

 arch_iommu = ops;
 return 0;
}
