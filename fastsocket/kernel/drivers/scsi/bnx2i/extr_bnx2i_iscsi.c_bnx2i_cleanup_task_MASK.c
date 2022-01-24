#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iscsi_task {scalar_t__ state; int /*<<< orphan*/  dd_data; int /*<<< orphan*/  sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {TYPE_1__* session; struct bnx2i_conn* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct bnx2i_conn {int /*<<< orphan*/  cmd_cleanup_cmpl; struct bnx2i_hba* hba; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_CMD_CLEANUP_TIMEOUT ; 
 scalar_t__ ISCSI_TASK_ABRT_TMF ; 
 scalar_t__ ISCSI_TASK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;
	struct bnx2i_conn *bnx2i_conn = conn->dd_data;
	struct bnx2i_hba *hba = bnx2i_conn->hba;

	/*
	 * mgmt task or cmd was never sent to us to transmit.
	 */
	if (!task->sc || task->state == ISCSI_TASK_PENDING)
		return;
	/*
	 * need to clean-up task context to claim dma buffers
	 */
	if (task->state == ISCSI_TASK_ABRT_TMF) {
		FUNC1(hba, task->dd_data);

		FUNC4(&conn->session->lock);
		FUNC5(&bnx2i_conn->cmd_cleanup_cmpl,
				FUNC2(ISCSI_CMD_CLEANUP_TIMEOUT));
		FUNC3(&conn->session->lock);
	}
	FUNC0(task->dd_data);
}