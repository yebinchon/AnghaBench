
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {unsigned long cap; } ;


 unsigned long IOMMU_CAP_NPCACHE ;

__attribute__((used)) static int iommu_has_npcache(struct amd_iommu *iommu)
{
 return iommu->cap & (1UL << IOMMU_CAP_NPCACHE);
}
