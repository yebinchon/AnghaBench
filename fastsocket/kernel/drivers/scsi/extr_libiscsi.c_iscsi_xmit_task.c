
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_task {int last_xfer; } ;
struct iscsi_conn {struct iscsi_task* task; TYPE_2__* session; int suspend_tx; } ;
struct TYPE_4__ {int lock; TYPE_1__* tt; } ;
struct TYPE_3__ {int (* xmit_task ) (struct iscsi_task*) ;} ;


 int ENODATA ;
 int ISCSI_SUSPEND_BIT ;
 int __iscsi_get_task (struct iscsi_task*) ;
 int __iscsi_put_task (struct iscsi_task*) ;
 int jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_task*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int iscsi_xmit_task(struct iscsi_conn *conn)
{
 struct iscsi_task *task = conn->task;
 int rc;

 if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx))
  return -ENODATA;

 __iscsi_get_task(task);
 spin_unlock_bh(&conn->session->lock);
 rc = conn->session->tt->xmit_task(task);
 spin_lock_bh(&conn->session->lock);
 if (!rc) {

  task->last_xfer = jiffies;
  conn->task = ((void*)0);
 }
 __iscsi_put_task(task);
 return rc;
}
