#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct iscsi_task {scalar_t__ sc; struct iscsi_conn* conn; struct beiscsi_io_task* dd_data; } ;
struct iscsi_conn {struct beiscsi_conn* dd_data; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct beiscsi_session {int /*<<< orphan*/  bhs_pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
struct TYPE_5__ {TYPE_1__ a64; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct beiscsi_io_task {int /*<<< orphan*/ * psgl_handle; int /*<<< orphan*/ * pwrb_handle; int /*<<< orphan*/ * cmd_bhs; TYPE_3__ bhs_pa; } ;
struct beiscsi_hba {int /*<<< orphan*/  io_sgl_lock; struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int /*<<< orphan*/  login_in_progress; int /*<<< orphan*/  beiscsi_conn_cid; struct beiscsi_session* beiscsi_sess; struct beiscsi_hba* phba; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_conn*,struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,struct hwi_wrb_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iscsi_task *task)
{
	struct beiscsi_io_task *io_task = task->dd_data;
	struct iscsi_conn *conn = task->conn;
	struct beiscsi_conn *beiscsi_conn = conn->dd_data;
	struct beiscsi_hba *phba = beiscsi_conn->phba;
	struct beiscsi_session *beiscsi_sess = beiscsi_conn->beiscsi_sess;
	struct hwi_wrb_context *pwrb_context;
	struct hwi_controller *phwi_ctrlr;
	uint16_t cri_index = FUNC0(
			     beiscsi_conn->beiscsi_conn_cid);

	phwi_ctrlr = phba->phwi_ctrlr;
	pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

	if (io_task->cmd_bhs) {
		FUNC4(beiscsi_sess->bhs_pool, io_task->cmd_bhs,
			      io_task->bhs_pa.u.a64.address);
		io_task->cmd_bhs = NULL;
	}

	if (task->sc) {
		if (io_task->pwrb_handle) {
			FUNC3(phba, pwrb_context,
					io_task->pwrb_handle);
			io_task->pwrb_handle = NULL;
		}

		if (io_task->psgl_handle) {
			FUNC5(&phba->io_sgl_lock);
			FUNC2(phba, io_task->psgl_handle);
			FUNC6(&phba->io_sgl_lock);
			io_task->psgl_handle = NULL;
		}
	} else {
		if (!beiscsi_conn->login_in_progress)
			FUNC1(beiscsi_conn, task);
	}
}