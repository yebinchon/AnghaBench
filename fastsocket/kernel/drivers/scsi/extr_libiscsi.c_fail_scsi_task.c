
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int result; } ;
struct iscsi_task {scalar_t__ state; struct scsi_cmnd* sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_6__ {int length; int resid; } ;
struct TYPE_5__ {int length; int resid; } ;
struct TYPE_4__ {int queued_cmdsn; } ;


 int DID_TRANSPORT_DISRUPTED ;
 int ISCSI_TASK_ABRT_SESS_RECOV ;
 int ISCSI_TASK_ABRT_TMF ;
 int ISCSI_TASK_COMPLETED ;
 scalar_t__ ISCSI_TASK_PENDING ;
 int iscsi_complete_task (struct iscsi_task*,int) ;
 int scsi_bidi_cmnd (struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 TYPE_3__* scsi_in (struct scsi_cmnd*) ;
 TYPE_2__* scsi_out (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void fail_scsi_task(struct iscsi_task *task, int err)
{
 struct iscsi_conn *conn = task->conn;
 struct scsi_cmnd *sc;
 int state;






 sc = task->sc;
 if (!sc)
  return;

 if (task->state == ISCSI_TASK_PENDING) {




  conn->session->queued_cmdsn--;

  state = ISCSI_TASK_COMPLETED;
 } else if (err == DID_TRANSPORT_DISRUPTED)
  state = ISCSI_TASK_ABRT_SESS_RECOV;
 else
  state = ISCSI_TASK_ABRT_TMF;

 sc->result = err << 16;
 if (!scsi_bidi_cmnd(sc))
  scsi_set_resid(sc, scsi_bufflen(sc));
 else {
  scsi_out(sc)->resid = scsi_out(sc)->length;
  scsi_in(sc)->resid = scsi_in(sc)->length;
 }

 iscsi_complete_task(task, state);
}
