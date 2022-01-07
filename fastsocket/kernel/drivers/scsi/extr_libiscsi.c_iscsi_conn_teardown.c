
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
struct iscsi_session {int lock; struct iscsi_conn* leadconn; TYPE_2__ cmdpool; TYPE_1__* host; int state; } ;
struct iscsi_conn {int login_task; int persistent_address; scalar_t__ data; int ehwait; int c_stage; int transport_timer; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_3__ {int host_failed; int host_busy; int host_lock; } ;


 int ISCSI_CONN_CLEANUP_WAIT ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISCSI_STATE_TERMINATE ;
 int KERN_INFO ;
 int __kfifo_put (int ,void*,int) ;
 int del_timer_sync (int *) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int ,int ) ;
 int iscsi_destroy_conn (struct iscsi_cls_conn*) ;
 int iscsi_suspend_tx (struct iscsi_conn*) ;
 int kfree (int ) ;
 int msleep_interruptible (int) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wake_up (int *) ;

void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 unsigned long flags;

 del_timer_sync(&conn->transport_timer);

 spin_lock_bh(&session->lock);
 conn->c_stage = ISCSI_CONN_CLEANUP_WAIT;
 if (session->leadconn == conn) {



  session->state = ISCSI_STATE_TERMINATE;
  wake_up(&conn->ehwait);
 }
 spin_unlock_bh(&session->lock);





 for (;;) {
  spin_lock_irqsave(session->host->host_lock, flags);
  if (!session->host->host_busy) {
   spin_unlock_irqrestore(session->host->host_lock, flags);
   break;
  }
  spin_unlock_irqrestore(session->host->host_lock, flags);
  msleep_interruptible(500);
  iscsi_conn_printk(KERN_INFO, conn, "iscsi conn_destroy(): "
      "host_busy %d host_failed %d\n",
      session->host->host_busy,
      session->host->host_failed);



  wake_up(&conn->ehwait);
 }


 iscsi_suspend_tx(conn);

 spin_lock_bh(&session->lock);
 free_pages((unsigned long) conn->data,
     get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
 kfree(conn->persistent_address);
 __kfifo_put(session->cmdpool.queue, (void*)&conn->login_task,
      sizeof(void*));
 if (session->leadconn == conn)
  session->leadconn = ((void*)0);
 spin_unlock_bh(&session->lock);

 iscsi_destroy_conn(cls_conn);
}
