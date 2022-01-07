
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {struct iscsi_conn* conn; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {scalar_t__ recv_timeout; int transport_timer; int cls_conn; struct iscsi_task* ping_task; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int ISCSI_TASK_COMPLETED ;
 int iscsi_complete_task (struct iscsi_task*,int ) ;
 scalar_t__ iscsi_recv_pdu (int ,struct iscsi_hdr*,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static int iscsi_nop_out_rsp(struct iscsi_task *task,
        struct iscsi_nopin *nop, char *data, int datalen)
{
 struct iscsi_conn *conn = task->conn;
 int rc = 0;

 if (conn->ping_task != task) {




  if (iscsi_recv_pdu(conn->cls_conn, (struct iscsi_hdr *)nop,
       data, datalen))
   rc = ISCSI_ERR_CONN_FAILED;
 } else
  mod_timer(&conn->transport_timer, jiffies + conn->recv_timeout);
 iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
 return rc;
}
