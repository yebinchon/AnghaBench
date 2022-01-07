
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tcp_task {scalar_t__ r2tqueue; int r2tpool; } ;
struct iscsi_task {struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {int cmds_max; int max_r2t; struct iscsi_task** cmds; } ;
struct iscsi_r2t_info {int dummy; } ;


 int ENOMEM ;
 scalar_t__ ERR_PTR (int) ;
 int GFP_KERNEL ;
 int iscsi_pool_free (int *) ;
 scalar_t__ iscsi_pool_init (int *,int,int *,int) ;
 scalar_t__ kfifo_alloc (int,int ,int *) ;
 int kfifo_free (scalar_t__) ;

int iscsi_tcp_r2tpool_alloc(struct iscsi_session *session)
{
 int i;
 int cmd_i;




 for (cmd_i = 0; cmd_i < session->cmds_max; cmd_i++) {
         struct iscsi_task *task = session->cmds[cmd_i];
  struct iscsi_tcp_task *tcp_task = task->dd_data;
  if (iscsi_pool_init(&tcp_task->r2tpool,
        session->max_r2t * 2, ((void*)0),
        sizeof(struct iscsi_r2t_info))) {
   goto r2t_alloc_fail;
  }


  tcp_task->r2tqueue = kfifo_alloc(
        session->max_r2t * 4 * sizeof(void*), GFP_KERNEL, ((void*)0));
  if (tcp_task->r2tqueue == ERR_PTR(-ENOMEM)) {
   iscsi_pool_free(&tcp_task->r2tpool);
   goto r2t_alloc_fail;
  }
 }

 return 0;

r2t_alloc_fail:
 for (i = 0; i < cmd_i; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct iscsi_tcp_task *tcp_task = task->dd_data;

  kfifo_free(tcp_task->r2tqueue);
  iscsi_pool_free(&tcp_task->r2tpool);
 }
 return -ENOMEM;
}
