#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ptr; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; int /*<<< orphan*/ * cmnd; TYPE_3__* device; TYPE_1__ SCp; } ;
struct iscsi_task {int /*<<< orphan*/  running; } ;
struct iscsi_session {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_cmdsn; int /*<<< orphan*/  cmdsn; TYPE_2__* tt; struct iscsi_conn* leadconn; } ;
struct iscsi_host {int /*<<< orphan*/  workq; } ;
struct iscsi_conn {int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  suspend_tx; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  resid; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  resid; } ;
struct TYPE_8__ {struct Scsi_Host* host; } ;
struct TYPE_7__ {scalar_t__ (* xmit_task ) (struct iscsi_task*) ;} ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,int /*<<< orphan*/ ,int) ; 
#define  ISCSI_STATE_FAILED 132 
#define  ISCSI_STATE_IN_RECOVERY 131 
 int ISCSI_STATE_LOGGED_IN ; 
#define  ISCSI_STATE_LOGGING_OUT 130 
#define  ISCSI_STATE_RECOVERY_FAILED 129 
#define  ISCSI_STATE_TERMINATE 128 
 int /*<<< orphan*/  ISCSI_SUSPEND_BIT ; 
 int /*<<< orphan*/  ISCSI_TASK_COMPLETED ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 struct iscsi_task* FUNC1 (struct iscsi_conn*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int FUNC5 (struct iscsi_task*) ; 
 int FUNC6 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 TYPE_5__* FUNC10 (struct scsi_cmnd*) ; 
 TYPE_4__* FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 struct iscsi_host* FUNC14 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct iscsi_cls_session* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct iscsi_task*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC20(struct scsi_cmnd *sc, void (*done)(struct scsi_cmnd *))
{
	struct iscsi_cls_session *cls_session;
	struct Scsi_Host *host;
	struct iscsi_host *ihost;
	int reason = 0;
	struct iscsi_session *session;
	struct iscsi_conn *conn;
	struct iscsi_task *task = NULL;

	sc->scsi_done = done;
	sc->result = 0;
	sc->SCp.ptr = NULL;

	host = sc->device->host;
	ihost = FUNC14(host);
	FUNC16(host->host_lock);

	cls_session = FUNC17(FUNC13(sc->device));
	session = cls_session->dd_data;
	FUNC15(&session->lock);

	reason = FUNC6(cls_session);
	if (reason) {
		sc->result = reason;
		goto fault;
	}

	if (session->state != ISCSI_STATE_LOGGED_IN) {
		/*
		 * to handle the race between when we set the recovery state
		 * and block the session we requeue here (commands could
		 * be entering our queuecommand while a block is starting
		 * up because the block code is not locked)
		 */
		switch (session->state) {
		case ISCSI_STATE_FAILED:
		case ISCSI_STATE_IN_RECOVERY:
			reason = FAILURE_SESSION_IN_RECOVERY;
			sc->result = DID_IMM_RETRY << 16;
			break;
		case ISCSI_STATE_LOGGING_OUT:
			reason = FAILURE_SESSION_LOGGING_OUT;
			sc->result = DID_IMM_RETRY << 16;
			break;
		case ISCSI_STATE_RECOVERY_FAILED:
			reason = FAILURE_SESSION_RECOVERY_TIMEOUT;
			sc->result = DID_TRANSPORT_FAILFAST << 16;
			break;
		case ISCSI_STATE_TERMINATE:
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

	if (FUNC19(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
		reason = FAILURE_SESSION_IN_RECOVERY;
		sc->result = DID_REQUEUE;
		goto fault;
	}

	if (FUNC2(conn)) {
		reason = FAILURE_WINDOW_CLOSED;
		goto reject;
	}

	task = FUNC1(conn, sc);
	if (!task) {
		reason = FAILURE_OOM;
		goto reject;
	}

	if (!ihost->workq) {
		reason = FUNC5(task);
		if (reason) {
			if (reason == -ENOMEM ||  reason == -EACCES) {
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
		FUNC7(&task->running, &conn->cmdqueue);
		FUNC4(conn);
	}

	session->queued_cmdsn++;
	FUNC16(&session->lock);
	FUNC15(host->host_lock);
	return 0;

prepd_reject:
	sc->scsi_done = NULL;
	FUNC3(task, ISCSI_TASK_COMPLETED);
reject:
	FUNC16(&session->lock);
	FUNC0(session, "cmd 0x%x rejected (%d)\n",
			  sc->cmnd[0], reason);
	FUNC15(host->host_lock);
	return SCSI_MLQUEUE_TARGET_BUSY;

prepd_fault:
	sc->scsi_done = NULL;
	FUNC3(task, ISCSI_TASK_COMPLETED);
fault:
	FUNC16(&session->lock);
	FUNC0(session, "iscsi: cmd 0x%x is not queued (%d)\n",
			  sc->cmnd[0], reason);
	if (!FUNC8(sc))
		FUNC12(sc, FUNC9(sc));
	else {
		FUNC11(sc)->resid = FUNC11(sc)->length;
		FUNC10(sc)->resid = FUNC10(sc)->length;
	}
	done(sc);
	FUNC15(host->host_lock);
	return 0;
}