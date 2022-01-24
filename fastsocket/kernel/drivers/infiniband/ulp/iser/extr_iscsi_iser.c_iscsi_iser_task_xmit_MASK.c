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
struct TYPE_3__ {int /*<<< orphan*/  data_length; } ;
struct iscsi_task {int /*<<< orphan*/  itt; TYPE_1__ unsol_r2t; int /*<<< orphan*/  imm_count; TYPE_2__* sc; struct iscsi_iser_task* dd_data; struct iscsi_conn* conn; } ;
struct iscsi_iser_task {int command_sent; } ;
struct iscsi_conn {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {scalar_t__ sc_data_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int FUNC1 (struct iscsi_conn*,struct iscsi_task*) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_task*) ; 
 scalar_t__ FUNC3 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_task*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;
	struct iscsi_iser_task *iser_task = task->dd_data;
	int error = 0;

	if (!task->sc)
		return FUNC1(conn, task);

	if (task->sc->sc_data_direction == DMA_TO_DEVICE) {
		FUNC0(FUNC6(task->sc) == 0);

		FUNC4("cmd [itt %x total %d imm %d unsol_data %d\n",
			   task->itt, FUNC6(task->sc),
			   task->imm_count, task->unsol_r2t.data_length);
	}

	FUNC4("ctask xmit [cid %d itt 0x%x]\n",
		   conn->id, task->itt);

	/* Send the cmd PDU */
	if (!iser_task->command_sent) {
		error = FUNC5(conn, task);
		if (error)
			goto iscsi_iser_task_xmit_exit;
		iser_task->command_sent = 1;
	}

	/* Send unsolicited data-out PDU(s) if necessary */
	if (FUNC3(task))
		error = FUNC2(conn, task);

 iscsi_iser_task_xmit_exit:
	return error;
}