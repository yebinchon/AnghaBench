
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int dummy; } ;


 int DEFAULT_DOMAIN_ADDRESS_WIDTH ;
 int __iommu_calculate_agaw (struct intel_iommu*,int ) ;

int iommu_calculate_agaw(struct intel_iommu *iommu)
{
 return __iommu_calculate_agaw(iommu, DEFAULT_DOMAIN_ADDRESS_WIDTH);
}
