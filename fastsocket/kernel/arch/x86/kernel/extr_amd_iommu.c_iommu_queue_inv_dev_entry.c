
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iommu_cmd {int * data; } ;
struct amd_iommu {int dummy; } ;
typedef int cmd ;


 int BUG_ON (int ) ;
 int CMD_INV_DEV_ENTRY ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;
 int memset (struct iommu_cmd*,int ,int) ;

__attribute__((used)) static int iommu_queue_inv_dev_entry(struct amd_iommu *iommu, u16 devid)
{
 struct iommu_cmd cmd;
 int ret;

 BUG_ON(iommu == ((void*)0));

 memset(&cmd, 0, sizeof(cmd));
 CMD_SET_TYPE(&cmd, CMD_INV_DEV_ENTRY);
 cmd.data[0] = devid;

 ret = iommu_queue_command(iommu, &cmd);

 return ret;
}
