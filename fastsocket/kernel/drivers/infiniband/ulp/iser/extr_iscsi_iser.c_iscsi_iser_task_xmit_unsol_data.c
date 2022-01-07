
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_r2t_info {scalar_t__ sent; scalar_t__ data_length; scalar_t__ data_count; int datasn; } ;
struct iscsi_task {struct iscsi_r2t_info unsol_r2t; } ;
struct iscsi_data {int itt; } ;
struct iscsi_conn {int dummy; } ;


 int iscsi_prep_data_out_pdu (struct iscsi_task*,struct iscsi_r2t_info*,struct iscsi_data*) ;
 scalar_t__ iscsi_task_has_unsol_data (struct iscsi_task*) ;
 int iser_dbg (char*,scalar_t__,...) ;
 int iser_send_data_out (struct iscsi_conn*,struct iscsi_task*,struct iscsi_data*) ;

__attribute__((used)) static int
iscsi_iser_task_xmit_unsol_data(struct iscsi_conn *conn,
     struct iscsi_task *task)
{
 struct iscsi_r2t_info *r2t = &task->unsol_r2t;
 struct iscsi_data hdr;
 int error = 0;


 while (iscsi_task_has_unsol_data(task)) {
  iscsi_prep_data_out_pdu(task, r2t, &hdr);
  iser_dbg("Sending data-out: itt 0x%x, data count %d\n",
      hdr.itt, r2t->data_count);



  error = iser_send_data_out(conn, task, &hdr);
  if (error) {
   r2t->datasn--;
   goto iscsi_iser_task_xmit_unsol_data_exit;
  }
  r2t->sent += r2t->data_count;
  iser_dbg("Need to send %d more as data-out PDUs\n",
      r2t->data_length - r2t->sent);
 }

iscsi_iser_task_xmit_unsol_data_exit:
 return error;
}
