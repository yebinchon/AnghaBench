
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {scalar_t__ state; int eh_mutex; int lock; int cls_session; } ;
struct iscsi_conn {int stop_stage; int tmhdr; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; int c_stage; int transport_timer; } ;


 int DID_TRANSPORT_DISRUPTED ;
 int ISCSI_CONN_STOPPED ;
 int ISCSI_DBG_SESSION (struct iscsi_session*,char*) ;
 scalar_t__ ISCSI_STATE_IN_RECOVERY ;
 scalar_t__ ISCSI_STATE_TERMINATE ;
 int STOP_CONN_RECOVER ;
 int STOP_CONN_TERM ;
 int del_timer_sync (int *) ;
 int fail_mgmt_tasks (struct iscsi_session*,struct iscsi_conn*) ;
 int fail_scsi_tasks (struct iscsi_conn*,int,int ) ;
 int iscsi_block_session (int ) ;
 int iscsi_suspend_tx (struct iscsi_conn*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_start_session_recovery(struct iscsi_session *session,
      struct iscsi_conn *conn, int flag)
{
 int old_stop_stage;

 mutex_lock(&session->eh_mutex);
 spin_lock_bh(&session->lock);
 if (conn->stop_stage == STOP_CONN_TERM) {
  spin_unlock_bh(&session->lock);
  mutex_unlock(&session->eh_mutex);
  return;
 }






 if (flag == STOP_CONN_TERM)
  session->state = ISCSI_STATE_TERMINATE;
 else if (conn->stop_stage != STOP_CONN_RECOVER)
  session->state = ISCSI_STATE_IN_RECOVERY;

 old_stop_stage = conn->stop_stage;
 conn->stop_stage = flag;
 spin_unlock_bh(&session->lock);

 del_timer_sync(&conn->transport_timer);
 iscsi_suspend_tx(conn);

 spin_lock_bh(&session->lock);
 conn->c_stage = ISCSI_CONN_STOPPED;
 spin_unlock_bh(&session->lock);







 if (flag == STOP_CONN_RECOVER) {
  conn->hdrdgst_en = 0;
  conn->datadgst_en = 0;
  if (session->state == ISCSI_STATE_IN_RECOVERY &&
      old_stop_stage != STOP_CONN_RECOVER) {
   ISCSI_DBG_SESSION(session, "blocking session\n");
   iscsi_block_session(session->cls_session);
  }
 }




 spin_lock_bh(&session->lock);
 fail_scsi_tasks(conn, -1, DID_TRANSPORT_DISRUPTED);
 fail_mgmt_tasks(session, conn);
 memset(&conn->tmhdr, 0, sizeof(conn->tmhdr));
 spin_unlock_bh(&session->lock);
 mutex_unlock(&session->eh_mutex);
}
