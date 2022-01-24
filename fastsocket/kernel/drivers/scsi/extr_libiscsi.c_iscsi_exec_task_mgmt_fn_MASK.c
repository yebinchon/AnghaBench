#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iscsi_tm {int dummy; } ;
struct iscsi_task {int dummy; } ;
struct iscsi_session {int age; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  eh_mutex; } ;
struct iscsi_hdr {int dummy; } ;
struct TYPE_3__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct iscsi_conn {scalar_t__ tmf_state; TYPE_1__ tmf_timer; int /*<<< orphan*/  ehwait; int /*<<< orphan*/  tmfcmd_pdus_cnt; struct iscsi_session* session; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int EPERM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 scalar_t__ ISCSI_STATE_LOGGED_IN ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ TMF_QUEUED ; 
 struct iscsi_task* FUNC1 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct iscsi_conn*,char*) ; 
 int /*<<< orphan*/  iscsi_tmf_timedout ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct iscsi_conn *conn,
				   struct iscsi_tm *hdr, int age,
				   int timeout)
{
	struct iscsi_session *session = conn->session;
	struct iscsi_task *task;

	task = FUNC1(conn, (struct iscsi_hdr *)hdr,
				      NULL, 0);
	if (!task) {
		FUNC11(&session->lock);
		FUNC6(KERN_ERR, conn, "Could not send TMF.\n");
		FUNC5(conn, ISCSI_ERR_CONN_FAILED);
		FUNC10(&session->lock);
		return -EPERM;
	}
	conn->tmfcmd_pdus_cnt++;
	conn->tmf_timer.expires = timeout * HZ + jiffies;
	conn->tmf_timer.function = iscsi_tmf_timedout;
	conn->tmf_timer.data = (unsigned long)conn;
	FUNC2(&conn->tmf_timer);
	FUNC0(session, "tmf set timeout\n");

	FUNC11(&session->lock);
	FUNC8(&session->eh_mutex);

	/*
	 * block eh thread until:
	 *
	 * 1) tmf response
	 * 2) tmf timeout
	 * 3) session is terminated or restarted or userspace has
	 * given up on recovery
	 */
	FUNC12(conn->ehwait, age != session->age ||
				 session->state != ISCSI_STATE_LOGGED_IN ||
				 conn->tmf_state != TMF_QUEUED);
	if (FUNC9(current))
		FUNC4(current);
	FUNC3(&conn->tmf_timer);

	FUNC7(&session->eh_mutex);
	FUNC10(&session->lock);
	/* if the session drops it will clean up the task */
	if (age != session->age ||
	    session->state != ISCSI_STATE_LOGGED_IN)
		return -ENOTCONN;
	return 0;
}