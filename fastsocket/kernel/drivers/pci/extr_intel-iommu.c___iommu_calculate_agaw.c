
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int cap; } ;


 unsigned long cap_sagaw (int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 int width_to_agaw (int) ;

__attribute__((used)) static int __iommu_calculate_agaw(struct intel_iommu *iommu, int max_gaw)
{
 unsigned long sagaw;
 int agaw = -1;

 sagaw = cap_sagaw(iommu->cap);
 for (agaw = width_to_agaw(max_gaw);
      agaw >= 0; agaw--) {
  if (test_bit(agaw, &sagaw))
   break;
 }

 return agaw;
}
