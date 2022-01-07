
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int running; struct iscsi_conn* conn; } ;
struct iscsi_conn {int requeue; } ;


 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

void iscsi_requeue_task(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;





 if (list_empty(&task->running))
  list_add_tail(&task->running, &conn->requeue);
 iscsi_conn_queue_work(conn);
}
