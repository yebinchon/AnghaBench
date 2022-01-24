#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct iscsi_session {int /*<<< orphan*/  lock; struct iscsi_conn* leadconn; TYPE_2__ cmdpool; TYPE_1__* host; int /*<<< orphan*/  state; } ;
struct iscsi_conn {int /*<<< orphan*/  login_task; int /*<<< orphan*/  persistent_address; scalar_t__ data; int /*<<< orphan*/  ehwait; int /*<<< orphan*/  c_stage; int /*<<< orphan*/  transport_timer; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_failed; int /*<<< orphan*/  host_busy; int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_CONN_CLEANUP_WAIT ; 
 int /*<<< orphan*/  ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int /*<<< orphan*/  ISCSI_STATE_TERMINATE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iscsi_session *session = conn->session;
	unsigned long flags;

	FUNC1(&conn->transport_timer);

	FUNC9(&session->lock);
	conn->c_stage = ISCSI_CONN_CLEANUP_WAIT;
	if (session->leadconn == conn) {
		/*
		 * leading connection? then give up on recovery.
		 */
		session->state = ISCSI_STATE_TERMINATE;
		FUNC13(&conn->ehwait);
	}
	FUNC11(&session->lock);

	/*
	 * Block until all in-progress commands for this connection
	 * time out or fail.
	 */
	for (;;) {
		FUNC10(session->host->host_lock, flags);
		if (!session->host->host_busy) { /* OK for ERL == 0 */
			FUNC12(session->host->host_lock, flags);
			break;
		}
		FUNC12(session->host->host_lock, flags);
		FUNC8(500);
		FUNC4(KERN_INFO, conn, "iscsi conn_destroy(): "
				  "host_busy %d host_failed %d\n",
				  session->host->host_busy,
				  session->host->host_failed);
		/*
		 * force eh_abort() to unblock
		 */
		FUNC13(&conn->ehwait);
	}

	/* flush queued up work because we free the connection below */
	FUNC6(conn);

	FUNC9(&session->lock);
	FUNC2((unsigned long) conn->data,
		   FUNC3(ISCSI_DEF_MAX_RECV_SEG_LEN));
	FUNC7(conn->persistent_address);
	FUNC0(session->cmdpool.queue, (void*)&conn->login_task,
		    sizeof(void*));
	if (session->leadconn == conn)
		session->leadconn = NULL;
	FUNC11(&session->lock);

	FUNC5(cls_conn);
}