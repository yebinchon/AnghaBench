#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iscsi_task {int state; int /*<<< orphan*/  running; int /*<<< orphan*/  sc; int /*<<< orphan*/  itt; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct iscsi_task* ping_task; struct iscsi_task* task; int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ISCSI_TASK_ABRT_SESS_RECOV ; 
 int ISCSI_TASK_ABRT_TMF ; 
 int ISCSI_TASK_COMPLETED ; 
 int ISCSI_TASK_FREE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iscsi_task *task, int state)
{
	struct iscsi_conn *conn = task->conn;

	FUNC0(conn->session,
			  "complete task itt 0x%x state %d sc %p\n",
			  task->itt, task->state, task->sc);
	if (task->state == ISCSI_TASK_COMPLETED ||
	    task->state == ISCSI_TASK_ABRT_TMF ||
	    task->state == ISCSI_TASK_ABRT_SESS_RECOV)
		return;
	FUNC1(task->state == ISCSI_TASK_FREE);
	task->state = state;

	if (!FUNC4(&task->running))
		FUNC3(&task->running);

	if (conn->task == task)
		conn->task = NULL;

	if (conn->ping_task == task)
		conn->ping_task = NULL;

	/* release get from queueing */
	FUNC2(task);
}