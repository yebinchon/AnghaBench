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
struct iscsi_task {struct iscsi_conn* conn; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {scalar_t__ recv_timeout; int /*<<< orphan*/  transport_timer; int /*<<< orphan*/  cls_conn; struct iscsi_task* ping_task; } ;

/* Variables and functions */
 int ISCSI_ERR_CONN_FAILED ; 
 int /*<<< orphan*/  ISCSI_TASK_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct iscsi_hdr*,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct iscsi_task *task,
			     struct iscsi_nopin *nop, char *data, int datalen)
{
	struct iscsi_conn *conn = task->conn;
	int rc = 0;

	if (conn->ping_task != task) {
		/*
		 * If this is not in response to one of our
		 * nops then it must be from userspace.
		 */
		if (FUNC1(conn->cls_conn, (struct iscsi_hdr *)nop,
				   data, datalen))
			rc = ISCSI_ERR_CONN_FAILED;
	} else
		FUNC2(&conn->transport_timer, jiffies + conn->recv_timeout);
	FUNC0(task, ISCSI_TASK_COMPLETED);
	return rc;
}