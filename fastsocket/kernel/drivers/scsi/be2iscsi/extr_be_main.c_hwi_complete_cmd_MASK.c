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
typedef  size_t uint16_t ;
struct wrb_handle {struct iscsi_wrb* pwrb; struct iscsi_task* pio_handle; } ;
struct sol_cqe {int dummy; } ;
struct iscsi_wrb {int dummy; } ;
struct iscsi_task {TYPE_1__* hdr; scalar_t__ dd_data; } ;
struct iscsi_session {int /*<<< orphan*/  lock; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct hwi_wrb_context {struct wrb_handle** pwrb_handle_basestd; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct common_sol_cqe {size_t wrb_index; int /*<<< orphan*/  cid; int /*<<< orphan*/  member_0; } ;
struct beiscsi_io_task {unsigned int wrb_type; } ;
struct beiscsi_hba {struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {struct iscsi_conn* conn; } ;
struct TYPE_2__ {int opcode; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_IO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
#define  HWH_TYPE_IO 132 
#define  HWH_TYPE_IO_RD 131 
#define  HWH_TYPE_LOGIN 130 
#define  HWH_TYPE_LOGOUT 129 
#define  HWH_TYPE_NOP 128 
 int ISCSI_OPCODE_MASK ; 
 int ISCSI_OP_LOGOUT ; 
 int ISCSI_OP_NOOP_OUT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,struct sol_cqe*,struct common_sol_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_conn*,struct iscsi_task*,struct common_sol_cqe*) ; 
 int /*<<< orphan*/  FUNC6 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct beiscsi_conn *beiscsi_conn,
			     struct beiscsi_hba *phba, struct sol_cqe *psol)
{
	struct hwi_wrb_context *pwrb_context;
	struct wrb_handle *pwrb_handle;
	struct iscsi_wrb *pwrb = NULL;
	struct hwi_controller *phwi_ctrlr;
	struct iscsi_task *task;
	unsigned int type;
	struct iscsi_conn *conn = beiscsi_conn->conn;
	struct iscsi_session *session = conn->session;
	struct common_sol_cqe csol_cqe = {0};
	uint16_t cri_index = 0;

	phwi_ctrlr = phba->phwi_ctrlr;

	/* Copy the elements to a common structure */
	FUNC1(phba, psol, &csol_cqe);

	cri_index = FUNC0(csol_cqe.cid);
	pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

	pwrb_handle = pwrb_context->pwrb_handle_basestd[
		      csol_cqe.wrb_index];

	task = pwrb_handle->pio_handle;
	pwrb = pwrb_handle->pwrb;
	type = ((struct beiscsi_io_task *)task->dd_data)->wrb_type;

	FUNC7(&session->lock);
	switch (type) {
	case HWH_TYPE_IO:
	case HWH_TYPE_IO_RD:
		if ((task->hdr->opcode & ISCSI_OPCODE_MASK) ==
		     ISCSI_OP_NOOP_OUT)
			FUNC4(beiscsi_conn, task, &csol_cqe);
		else
			FUNC2(beiscsi_conn, task, &csol_cqe);
		break;

	case HWH_TYPE_LOGOUT:
		if ((task->hdr->opcode & ISCSI_OPCODE_MASK) == ISCSI_OP_LOGOUT)
			FUNC3(beiscsi_conn, task, &csol_cqe);
		else
			FUNC5(beiscsi_conn, task, &csol_cqe);
		break;

	case HWH_TYPE_LOGIN:
		FUNC6(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_IO,
			    "BM_%d :\t\t No HWH_TYPE_LOGIN Expected in"
			    " hwi_complete_cmd- Solicited path\n");
		break;

	case HWH_TYPE_NOP:
		FUNC4(beiscsi_conn, task, &csol_cqe);
		break;

	default:
		FUNC6(phba, KERN_WARNING,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_IO,
			    "BM_%d : In hwi_complete_cmd, unknown type = %d"
			    "wrb_index 0x%x CID 0x%x\n", type,
			    csol_cqe.wrb_index,
			    csol_cqe.cid);
		break;
	}

	FUNC8(&session->lock);
}