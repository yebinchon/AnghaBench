
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_task {struct bnx2i_cmd* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;
struct iscsi_bd {int dummy; } ;
struct bnx2i_hba {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int bd_tbl_dma; scalar_t__ bd_tbl; } ;
struct bnx2i_cmd {TYPE_2__ io_tbl; } ;
struct TYPE_3__ {int dev; } ;


 int ISCSI_MAX_BDS_PER_CMD ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void bnx2i_destroy_cmd_pool(struct bnx2i_hba *hba,
       struct iscsi_session *session)
{
 int i;

 for (i = 0; i < session->cmds_max; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct bnx2i_cmd *cmd = task->dd_data;

  if (cmd->io_tbl.bd_tbl)
   dma_free_coherent(&hba->pcidev->dev,
       ISCSI_MAX_BDS_PER_CMD *
       sizeof(struct iscsi_bd),
       cmd->io_tbl.bd_tbl,
       cmd->io_tbl.bd_tbl_dma);
 }

}
