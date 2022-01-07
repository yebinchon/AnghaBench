
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int itt; } ;
struct iscsi_conn {int id; } ;


 int iser_dbg (char*,int ,int ) ;
 int iser_send_control (struct iscsi_conn*,struct iscsi_task*) ;

__attribute__((used)) static int
iscsi_iser_mtask_xmit(struct iscsi_conn *conn, struct iscsi_task *task)
{
 int error = 0;

 iser_dbg("mtask xmit [cid %d itt 0x%x]\n", conn->id, task->itt);

 error = iser_send_control(conn, task);







 return error;
}
