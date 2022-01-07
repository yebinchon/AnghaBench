
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int state; int running; int sc; int itt; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct iscsi_task* ping_task; struct iscsi_task* task; int session; } ;


 int ISCSI_DBG_SESSION (int ,char*,int ,int,int ) ;
 int ISCSI_TASK_ABRT_SESS_RECOV ;
 int ISCSI_TASK_ABRT_TMF ;
 int ISCSI_TASK_COMPLETED ;
 int ISCSI_TASK_FREE ;
 int WARN_ON_ONCE (int) ;
 int __iscsi_put_task (struct iscsi_task*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void iscsi_complete_task(struct iscsi_task *task, int state)
{
 struct iscsi_conn *conn = task->conn;

 ISCSI_DBG_SESSION(conn->session,
     "complete task itt 0x%x state %d sc %p\n",
     task->itt, task->state, task->sc);
 if (task->state == ISCSI_TASK_COMPLETED ||
     task->state == ISCSI_TASK_ABRT_TMF ||
     task->state == ISCSI_TASK_ABRT_SESS_RECOV)
  return;
 WARN_ON_ONCE(task->state == ISCSI_TASK_FREE);
 task->state = state;

 if (!list_empty(&task->running))
  list_del_init(&task->running);

 if (conn->task == task)
  conn->task = ((void*)0);

 if (conn->ping_task == task)
  conn->ping_task = ((void*)0);


 __iscsi_put_task(task);
}
