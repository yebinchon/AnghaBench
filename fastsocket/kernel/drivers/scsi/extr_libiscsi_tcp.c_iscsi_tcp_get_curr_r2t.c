
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; } ;
struct iscsi_tcp_task {struct iscsi_r2t_info* r2t; int r2tqueue; TYPE_1__ r2tpool; } ;
struct iscsi_r2t_info {scalar_t__ data_length; scalar_t__ sent; } ;
struct iscsi_task {TYPE_2__* conn; struct iscsi_r2t_info unsol_r2t; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {int lock; } ;
struct TYPE_4__ {struct iscsi_session* session; } ;


 int ISCSI_DBG_TCP (TYPE_2__*,char*,struct iscsi_r2t_info*) ;
 int __kfifo_get (int ,void*,int) ;
 int __kfifo_put (int ,void*,int) ;
 scalar_t__ iscsi_task_has_unsol_data (struct iscsi_task*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct iscsi_r2t_info *iscsi_tcp_get_curr_r2t(struct iscsi_task *task)
{
 struct iscsi_session *session = task->conn->session;
 struct iscsi_tcp_task *tcp_task = task->dd_data;
 struct iscsi_r2t_info *r2t = ((void*)0);

 if (iscsi_task_has_unsol_data(task))
  r2t = &task->unsol_r2t;
 else {
  spin_lock_bh(&session->lock);
  if (tcp_task->r2t) {
   r2t = tcp_task->r2t;

   if (r2t->data_length <= r2t->sent) {
    ISCSI_DBG_TCP(task->conn,
           "  done with r2t %p\n", r2t);
    __kfifo_put(tcp_task->r2tpool.queue,
         (void *)&tcp_task->r2t,
         sizeof(void *));
    tcp_task->r2t = r2t = ((void*)0);
   }
  }

  if (r2t == ((void*)0)) {
   __kfifo_get(tcp_task->r2tqueue,
        (void *)&tcp_task->r2t, sizeof(void *));
   r2t = tcp_task->r2t;
  }
  spin_unlock_bh(&session->lock);
 }

 return r2t;
}
