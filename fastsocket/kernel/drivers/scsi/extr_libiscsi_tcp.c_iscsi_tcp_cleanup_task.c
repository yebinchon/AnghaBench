
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct iscsi_tcp_task {struct iscsi_r2t_info* r2t; TYPE_1__ r2tpool; int r2tqueue; } ;
struct iscsi_task {int conn; int sc; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_r2t_info {int dummy; } ;


 int ISCSI_DBG_TCP (int ,char*) ;
 scalar_t__ __kfifo_get (int ,void*,int) ;
 int __kfifo_put (int ,void*,int) ;

void iscsi_tcp_cleanup_task(struct iscsi_task *task)
{
 struct iscsi_tcp_task *tcp_task = task->dd_data;
 struct iscsi_r2t_info *r2t;


 if (!task->sc)
  return;


 while (__kfifo_get(tcp_task->r2tqueue, (void*)&r2t, sizeof(void*))) {
  __kfifo_put(tcp_task->r2tpool.queue, (void*)&r2t,
       sizeof(void*));
  ISCSI_DBG_TCP(task->conn, "pending r2t dropped\n");
 }

 r2t = tcp_task->r2t;
 if (r2t != ((void*)0)) {
  __kfifo_put(tcp_task->r2tpool.queue, (void*)&r2t,
       sizeof(void*));
  tcp_task->r2t = ((void*)0);
 }
}
