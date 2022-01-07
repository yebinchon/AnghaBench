
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int * data; } ;
struct amd_iommu {int dummy; } ;
typedef int cmd ;


 int CMD_COMPL_WAIT ;
 int CMD_COMPL_WAIT_INT_MASK ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int __iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;
 int memset (struct iommu_cmd*,int ,int) ;

__attribute__((used)) static int __iommu_completion_wait(struct amd_iommu *iommu)
{
 struct iommu_cmd cmd;

  memset(&cmd, 0, sizeof(cmd));
  cmd.data[0] = CMD_COMPL_WAIT_INT_MASK;
  CMD_SET_TYPE(&cmd, CMD_COMPL_WAIT);

  return __iommu_queue_command(iommu, &cmd);
}
