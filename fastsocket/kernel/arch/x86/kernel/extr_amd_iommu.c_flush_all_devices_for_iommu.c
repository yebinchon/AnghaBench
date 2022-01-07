
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int dummy; } ;


 int amd_iommu_last_bdf ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_queue_inv_dev_entry (struct amd_iommu*,int) ;

__attribute__((used)) static void flush_all_devices_for_iommu(struct amd_iommu *iommu)
{
 int i;

 for (i = 0; i <= amd_iommu_last_bdf; ++i) {
  if (iommu != amd_iommu_rlookup_table[i])
   continue;

  iommu_queue_inv_dev_entry(iommu, i);
  iommu_completion_wait(iommu);
 }
}
