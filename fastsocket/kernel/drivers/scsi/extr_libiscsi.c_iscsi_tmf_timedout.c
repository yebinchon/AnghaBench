
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int lock; } ;
struct iscsi_conn {scalar_t__ tmf_state; int ehwait; struct iscsi_session* session; } ;


 int ISCSI_DBG_EH (struct iscsi_session*,char*) ;
 scalar_t__ TMF_QUEUED ;
 scalar_t__ TMF_TIMEDOUT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void iscsi_tmf_timedout(unsigned long data)
{
 struct iscsi_conn *conn = (struct iscsi_conn *)data;
 struct iscsi_session *session = conn->session;

 spin_lock(&session->lock);
 if (conn->tmf_state == TMF_QUEUED) {
  conn->tmf_state = TMF_TIMEDOUT;
  ISCSI_DBG_EH(session, "tmf timedout\n");

  wake_up(&conn->ehwait);
 }
 spin_unlock(&session->lock);
}
