
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct beiscsi_hba {TYPE_1__ ctrl; } ;
struct be_dma_mem {int size; int va; int dma; } ;


 int BEISCSI_LOG_CONFIG ;
 int CMD_SUBSYSTEM_ISCSI ;
 int ENOMEM ;
 int KERN_ERR ;
 int be_cmd_hdr_prepare (int ,int ,int,int) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memset (int ,int ,int) ;
 int pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int mgmt_alloc_cmd_data(struct beiscsi_hba *phba, struct be_dma_mem *cmd,
          int iscsi_cmd, int size)
{
 cmd->va = pci_alloc_consistent(phba->ctrl.pdev, size, &cmd->dma);
 if (!cmd->va) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to allocate memory for if info\n");
  return -ENOMEM;
 }
 memset(cmd->va, 0, size);
 cmd->size = size;
 be_cmd_hdr_prepare(cmd->va, CMD_SUBSYSTEM_ISCSI, iscsi_cmd, size);
 return 0;
}
