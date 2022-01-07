
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_task {int itt; struct iscsi_conn* conn; } ;
struct iscsi_conn {int session; int last_recv; } ;


 int ISCSI_DBG_SESSION (int ,char*,int ) ;
 int ISCSI_TASK_COMPLETED ;
 int __iscsi_update_cmdsn (int ,int ,int ) ;
 int iscsi_complete_task (struct iscsi_task*,int ) ;
 int jiffies ;

void iscsi_complete_scsi_task(struct iscsi_task *task,
         uint32_t exp_cmdsn, uint32_t max_cmdsn)
{
 struct iscsi_conn *conn = task->conn;

 ISCSI_DBG_SESSION(conn->session, "[itt 0x%x]\n", task->itt);

 conn->last_recv = jiffies;
 __iscsi_update_cmdsn(conn->session, exp_cmdsn, max_cmdsn);
 iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
}
