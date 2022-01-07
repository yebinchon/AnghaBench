
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {scalar_t__ state; int lock; } ;
struct iscsi_conn {scalar_t__ stop_stage; int cls_conn; int suspend_rx; int suspend_tx; struct iscsi_session* session; } ;
typedef enum iscsi_err { ____Placeholder_iscsi_err } iscsi_err ;


 scalar_t__ ISCSI_STATE_FAILED ;
 int ISCSI_SUSPEND_BIT ;
 int iscsi_conn_error_event (int ,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_conn_failure(struct iscsi_conn *conn, enum iscsi_err err)
{
 struct iscsi_session *session = conn->session;

 spin_lock_bh(&session->lock);
 if (session->state == ISCSI_STATE_FAILED) {
  spin_unlock_bh(&session->lock);
  return;
 }

 if (conn->stop_stage == 0)
  session->state = ISCSI_STATE_FAILED;
 spin_unlock_bh(&session->lock);

 set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
 iscsi_conn_error_event(conn->cls_conn, err);
}
