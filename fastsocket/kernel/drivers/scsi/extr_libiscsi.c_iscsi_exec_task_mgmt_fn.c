
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tm {int dummy; } ;
struct iscsi_task {int dummy; } ;
struct iscsi_session {int age; scalar_t__ state; int lock; int eh_mutex; } ;
struct iscsi_hdr {int dummy; } ;
struct TYPE_3__ {unsigned long data; int function; scalar_t__ expires; } ;
struct iscsi_conn {scalar_t__ tmf_state; TYPE_1__ tmf_timer; int ehwait; int tmfcmd_pdus_cnt; struct iscsi_session* session; } ;


 int ENOTCONN ;
 int EPERM ;
 int HZ ;
 int ISCSI_DBG_EH (struct iscsi_session*,char*) ;
 int ISCSI_ERR_CONN_FAILED ;
 scalar_t__ ISCSI_STATE_LOGGED_IN ;
 int KERN_ERR ;
 scalar_t__ TMF_QUEUED ;
 struct iscsi_task* __iscsi_conn_send_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int add_timer (TYPE_1__*) ;
 int current ;
 int del_timer_sync (TYPE_1__*) ;
 int flush_signals (int ) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*) ;
 int iscsi_tmf_timedout ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
       struct iscsi_tm *hdr, int age,
       int timeout)
{
 struct iscsi_session *session = conn->session;
 struct iscsi_task *task;

 task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)hdr,
          ((void*)0), 0);
 if (!task) {
  spin_unlock_bh(&session->lock);
  iscsi_conn_printk(KERN_ERR, conn, "Could not send TMF.\n");
  iscsi_conn_failure(conn, ISCSI_ERR_CONN_FAILED);
  spin_lock_bh(&session->lock);
  return -EPERM;
 }
 conn->tmfcmd_pdus_cnt++;
 conn->tmf_timer.expires = timeout * HZ + jiffies;
 conn->tmf_timer.function = iscsi_tmf_timedout;
 conn->tmf_timer.data = (unsigned long)conn;
 add_timer(&conn->tmf_timer);
 ISCSI_DBG_EH(session, "tmf set timeout\n");

 spin_unlock_bh(&session->lock);
 mutex_unlock(&session->eh_mutex);
 wait_event_interruptible(conn->ehwait, age != session->age ||
     session->state != ISCSI_STATE_LOGGED_IN ||
     conn->tmf_state != TMF_QUEUED);
 if (signal_pending(current))
  flush_signals(current);
 del_timer_sync(&conn->tmf_timer);

 mutex_lock(&session->eh_mutex);
 spin_lock_bh(&session->lock);

 if (age != session->age ||
     session->state != ISCSI_STATE_LOGGED_IN)
  return -ENOTCONN;
 return 0;
}
