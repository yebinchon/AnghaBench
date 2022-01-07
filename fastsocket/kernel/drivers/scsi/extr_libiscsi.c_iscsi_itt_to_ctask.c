
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_task {TYPE_2__* sc; } ;
struct iscsi_conn {TYPE_3__* session; } ;
typedef int itt_t ;
struct TYPE_6__ {int age; } ;
struct TYPE_4__ {int phase; } ;
struct TYPE_5__ {TYPE_1__ SCp; } ;


 int KERN_ERR ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int ) ;
 int iscsi_session_printk (int ,TYPE_3__*,char*,int ,int ) ;
 scalar_t__ iscsi_verify_itt (struct iscsi_conn*,int ) ;

struct iscsi_task *iscsi_itt_to_ctask(struct iscsi_conn *conn, itt_t itt)
{
 struct iscsi_task *task;

 if (iscsi_verify_itt(conn, itt))
  return ((void*)0);

 task = iscsi_itt_to_task(conn, itt);
 if (!task || !task->sc)
  return ((void*)0);

 if (task->sc->SCp.phase != conn->session->age) {
  iscsi_session_printk(KERN_ERR, conn->session,
      "task's session age %d, expected %d\n",
      task->sc->SCp.phase, conn->session->age);
  return ((void*)0);
 }

 return task;
}
