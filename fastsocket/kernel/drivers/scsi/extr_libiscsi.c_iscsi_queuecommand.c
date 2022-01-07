
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ptr; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; int * cmnd; TYPE_3__* device; TYPE_1__ SCp; } ;
struct iscsi_task {int running; } ;
struct iscsi_session {int state; int lock; int queued_cmdsn; int cmdsn; TYPE_2__* tt; struct iscsi_conn* leadconn; } ;
struct iscsi_host {int workq; } ;
struct iscsi_conn {int cmdqueue; int suspend_tx; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_10__ {int length; int resid; } ;
struct TYPE_9__ {int length; int resid; } ;
struct TYPE_8__ {struct Scsi_Host* host; } ;
struct TYPE_7__ {scalar_t__ (* xmit_task ) (struct iscsi_task*) ;} ;


 int DID_ABORT ;
 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int DID_REQUEUE ;
 int DID_TRANSPORT_FAILFAST ;
 int EACCES ;
 int ENOMEM ;
 int FAILURE_OOM ;
 int FAILURE_SESSION_FREED ;
 int FAILURE_SESSION_IN_RECOVERY ;
 int FAILURE_SESSION_LOGGING_OUT ;
 int FAILURE_SESSION_NOT_READY ;
 int FAILURE_SESSION_RECOVERY_TIMEOUT ;
 int FAILURE_SESSION_TERMINATE ;
 int FAILURE_WINDOW_CLOSED ;
 int ISCSI_DBG_SESSION (struct iscsi_session*,char*,int ,int) ;


 int ISCSI_STATE_LOGGED_IN ;



 int ISCSI_SUSPEND_BIT ;
 int ISCSI_TASK_COMPLETED ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 struct iscsi_task* iscsi_alloc_task (struct iscsi_conn*,struct scsi_cmnd*) ;
 scalar_t__ iscsi_check_cmdsn_window_closed (struct iscsi_conn*) ;
 int iscsi_complete_task (struct iscsi_task*,int ) ;
 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int iscsi_prep_scsi_cmd_pdu (struct iscsi_task*) ;
 int iscsi_session_chkready (struct iscsi_cls_session*) ;
 int list_add_tail (int *,int *) ;
 int scsi_bidi_cmnd (struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 TYPE_5__* scsi_in (struct scsi_cmnd*) ;
 TYPE_4__* scsi_out (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int scsi_target (TYPE_3__*) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct iscsi_cls_session* starget_to_session (int ) ;
 scalar_t__ stub1 (struct iscsi_task*) ;
 scalar_t__ test_bit (int ,int *) ;

int iscsi_queuecommand(struct scsi_cmnd *sc, void (*done)(struct scsi_cmnd *))
{
 struct iscsi_cls_session *cls_session;
 struct Scsi_Host *host;
 struct iscsi_host *ihost;
 int reason = 0;
 struct iscsi_session *session;
 struct iscsi_conn *conn;
 struct iscsi_task *task = ((void*)0);

 sc->scsi_done = done;
 sc->result = 0;
 sc->SCp.ptr = ((void*)0);

 host = sc->device->host;
 ihost = shost_priv(host);
 spin_unlock(host->host_lock);

 cls_session = starget_to_session(scsi_target(sc->device));
 session = cls_session->dd_data;
 spin_lock(&session->lock);

 reason = iscsi_session_chkready(cls_session);
 if (reason) {
  sc->result = reason;
  goto fault;
 }

 if (session->state != ISCSI_STATE_LOGGED_IN) {






  switch (session->state) {
  case 132:
  case 131:
   reason = FAILURE_SESSION_IN_RECOVERY;
   sc->result = DID_IMM_RETRY << 16;
   break;
  case 130:
   reason = FAILURE_SESSION_LOGGING_OUT;
   sc->result = DID_IMM_RETRY << 16;
   break;
  case 129:
   reason = FAILURE_SESSION_RECOVERY_TIMEOUT;
   sc->result = DID_TRANSPORT_FAILFAST << 16;
   break;
  case 128:
   reason = FAILURE_SESSION_TERMINATE;
   sc->result = DID_NO_CONNECT << 16;
   break;
  default:
   reason = FAILURE_SESSION_FREED;
   sc->result = DID_NO_CONNECT << 16;
  }
  goto fault;
 }

 conn = session->leadconn;
 if (!conn) {
  reason = FAILURE_SESSION_FREED;
  sc->result = DID_NO_CONNECT << 16;
  goto fault;
 }

 if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
  reason = FAILURE_SESSION_IN_RECOVERY;
  sc->result = DID_REQUEUE;
  goto fault;
 }

 if (iscsi_check_cmdsn_window_closed(conn)) {
  reason = FAILURE_WINDOW_CLOSED;
  goto reject;
 }

 task = iscsi_alloc_task(conn, sc);
 if (!task) {
  reason = FAILURE_OOM;
  goto reject;
 }

 if (!ihost->workq) {
  reason = iscsi_prep_scsi_cmd_pdu(task);
  if (reason) {
   if (reason == -ENOMEM || reason == -EACCES) {
    reason = FAILURE_OOM;
    goto prepd_reject;
   } else {
    sc->result = DID_ABORT << 16;
    goto prepd_fault;
   }
  }
  if (session->tt->xmit_task(task)) {
   session->cmdsn--;
   reason = FAILURE_SESSION_NOT_READY;
   goto prepd_reject;
  }
 } else {
  list_add_tail(&task->running, &conn->cmdqueue);
  iscsi_conn_queue_work(conn);
 }

 session->queued_cmdsn++;
 spin_unlock(&session->lock);
 spin_lock(host->host_lock);
 return 0;

prepd_reject:
 sc->scsi_done = ((void*)0);
 iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
reject:
 spin_unlock(&session->lock);
 ISCSI_DBG_SESSION(session, "cmd 0x%x rejected (%d)\n",
     sc->cmnd[0], reason);
 spin_lock(host->host_lock);
 return SCSI_MLQUEUE_TARGET_BUSY;

prepd_fault:
 sc->scsi_done = ((void*)0);
 iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
fault:
 spin_unlock(&session->lock);
 ISCSI_DBG_SESSION(session, "iscsi: cmd 0x%x is not queued (%d)\n",
     sc->cmnd[0], reason);
 if (!scsi_bidi_cmnd(sc))
  scsi_set_resid(sc, scsi_bufflen(sc));
 else {
  scsi_out(sc)->resid = scsi_out(sc)->length;
  scsi_in(sc)->resid = scsi_in(sc)->length;
 }
 done(sc);
 spin_lock(host->host_lock);
 return 0;
}
