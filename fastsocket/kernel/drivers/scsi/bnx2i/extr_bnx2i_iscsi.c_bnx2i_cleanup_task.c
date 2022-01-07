
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {scalar_t__ state; int dd_data; int sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {TYPE_1__* session; struct bnx2i_conn* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct bnx2i_conn {int cmd_cleanup_cmpl; struct bnx2i_hba* hba; } ;
struct TYPE_2__ {int lock; } ;


 int ISCSI_CMD_CLEANUP_TIMEOUT ;
 scalar_t__ ISCSI_TASK_ABRT_TMF ;
 scalar_t__ ISCSI_TASK_PENDING ;
 int bnx2i_iscsi_unmap_sg_list (int ) ;
 int bnx2i_send_cmd_cleanup_req (struct bnx2i_hba*,int ) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void bnx2i_cleanup_task(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;
 struct bnx2i_conn *bnx2i_conn = conn->dd_data;
 struct bnx2i_hba *hba = bnx2i_conn->hba;




 if (!task->sc || task->state == ISCSI_TASK_PENDING)
  return;



 if (task->state == ISCSI_TASK_ABRT_TMF) {
  bnx2i_send_cmd_cleanup_req(hba, task->dd_data);

  spin_unlock_bh(&conn->session->lock);
  wait_for_completion_timeout(&bnx2i_conn->cmd_cleanup_cmpl,
    msecs_to_jiffies(ISCSI_CMD_CLEANUP_TIMEOUT));
  spin_lock_bh(&conn->session->lock);
 }
 bnx2i_iscsi_unmap_sg_list(task->dd_data);
}
