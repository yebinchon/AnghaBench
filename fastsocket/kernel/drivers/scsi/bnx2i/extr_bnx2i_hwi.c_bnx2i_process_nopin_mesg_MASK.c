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
typedef  int u16 ;
struct iscsi_task {TYPE_3__* hdr; } ;
struct iscsi_session {int /*<<< orphan*/  lock; } ;
struct iscsi_nopin {int /*<<< orphan*/  lun; void* ttt; scalar_t__ itt; int /*<<< orphan*/  flags; void* exp_cmdsn; void* max_cmdsn; int /*<<< orphan*/  opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct cqe {int dummy; } ;
struct bnx2i_nop_in_msg {int itt; int /*<<< orphan*/  lun; int /*<<< orphan*/  ttt; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  op_code; } ;
struct TYPE_5__ {int /*<<< orphan*/  resp_hdr; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; TYPE_1__* cls_conn; } ;
typedef  int /*<<< orphan*/  itt_t ;
struct TYPE_6__ {scalar_t__ itt; } ;
struct TYPE_4__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int ISCSI_NOP_IN_MSG_INDEX ; 
 scalar_t__ RESERVED_ITT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_conn*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct iscsi_task* FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_nopin*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iscsi_session *session,
				     struct bnx2i_conn *bnx2i_conn,
				     struct cqe *cqe)
{
	struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
	struct iscsi_task *task;
	struct bnx2i_nop_in_msg *nop_in;
	struct iscsi_nopin *hdr;
	int tgt_async_nop = 0;

	nop_in = (struct bnx2i_nop_in_msg *)cqe;

	FUNC6(&session->lock);
	hdr = (struct iscsi_nopin *)&bnx2i_conn->gen_pdu.resp_hdr;
	FUNC5(hdr, 0, sizeof(struct iscsi_hdr));
	hdr->opcode = nop_in->op_code;
	hdr->max_cmdsn = FUNC2(nop_in->max_cmd_sn);
	hdr->exp_cmdsn = FUNC2(nop_in->exp_cmd_sn);
	hdr->ttt = FUNC2(nop_in->ttt);

	if (nop_in->itt == (u16) RESERVED_ITT) {
		FUNC1(bnx2i_conn);
		hdr->itt = RESERVED_ITT;
		tgt_async_nop = 1;
		goto done;
	}

	/* this is a response to one of our nop-outs */
	task = FUNC3(conn,
			 (itt_t) (nop_in->itt & ISCSI_NOP_IN_MSG_INDEX));
	if (task) {
		hdr->flags = ISCSI_FLAG_CMD_FINAL;
		hdr->itt = task->hdr->itt;
		hdr->ttt = FUNC2(nop_in->ttt);
		FUNC4(&hdr->lun, nop_in->lun, 8);
	}
done:
	FUNC0(conn, (struct iscsi_hdr *)hdr, NULL, 0);
	FUNC7(&session->lock);

	return tgt_async_nop;
}