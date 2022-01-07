
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int hdr_max; int * hdr; struct bnx2i_cmd* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;
struct iscsi_hdr {int dummy; } ;
struct bnx2i_hba {int dummy; } ;
struct bnx2i_cmd {int hdr; } ;


 int ENOMEM ;
 scalar_t__ bnx2i_alloc_bdt (struct bnx2i_hba*,struct iscsi_session*,struct bnx2i_cmd*) ;
 int bnx2i_destroy_cmd_pool (struct bnx2i_hba*,struct iscsi_session*) ;

__attribute__((used)) static int bnx2i_setup_cmd_pool(struct bnx2i_hba *hba,
    struct iscsi_session *session)
{
 int i;

 for (i = 0; i < session->cmds_max; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct bnx2i_cmd *cmd = task->dd_data;

  task->hdr = &cmd->hdr;
  task->hdr_max = sizeof(struct iscsi_hdr);

  if (bnx2i_alloc_bdt(hba, session, cmd))
   goto free_bdts;
 }

 return 0;

free_bdts:
 bnx2i_destroy_cmd_pool(hba, session);
 return -ENOMEM;
}
