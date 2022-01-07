
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int reset_in_progress; } ;


 int amd_iommu_reset_cmd_buffer (struct amd_iommu*) ;
 int flush_all_devices_for_iommu (struct amd_iommu*) ;
 int flush_all_domains_on_iommu (struct amd_iommu*) ;
 int panic (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static void reset_iommu_command_buffer(struct amd_iommu *iommu)
{
 pr_err("AMD-Vi: Resetting IOMMU command buffer\n");

 if (iommu->reset_in_progress)
  panic("AMD-Vi: ILLEGAL_COMMAND_ERROR while resetting command buffer\n");

 iommu->reset_in_progress = 1;

 amd_iommu_reset_cmd_buffer(iommu);
 flush_all_devices_for_iommu(iommu);
 flush_all_domains_on_iommu(iommu);

 iommu->reset_in_progress = 0;
}
