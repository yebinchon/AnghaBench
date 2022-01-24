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
struct iscsi_task {TYPE_3__* hdr; struct bnx2i_cmd* dd_data; } ;
struct TYPE_4__ {int req_buf_size; char* req_buf; } ;
struct bnx2i_conn {TYPE_2__* cls_conn; TYPE_1__ gen_pdu; } ;
struct bnx2i_cmd {struct bnx2i_conn* conn; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {int /*<<< orphan*/  dd_data; } ;

/* Variables and functions */
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_LOGIN 132 
#define  ISCSI_OP_LOGOUT 131 
#define  ISCSI_OP_NOOP_OUT 130 
#define  ISCSI_OP_SCSI_TMFUNC 129 
#define  ISCSI_OP_TEXT 128 
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2i_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_conn*,struct iscsi_task*) ; 
 int FUNC2 (struct bnx2i_conn*,struct iscsi_task*) ; 
 int FUNC3 (struct bnx2i_conn*,struct iscsi_task*,char*,int,int) ; 
 int FUNC4 (struct bnx2i_conn*,struct iscsi_task*) ; 
 int FUNC5 (struct bnx2i_conn*,struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct iscsi_task *task)
{
	struct bnx2i_cmd *cmd = task->dd_data;
	struct bnx2i_conn *bnx2i_conn = cmd->conn;
	int rc = 0;
	char *buf;
	int data_len;

	FUNC0(bnx2i_conn);
	switch (task->hdr->opcode & ISCSI_OPCODE_MASK) {
	case ISCSI_OP_LOGIN:
		FUNC1(bnx2i_conn, task);
		break;
	case ISCSI_OP_NOOP_OUT:
		data_len = bnx2i_conn->gen_pdu.req_buf_size;
		buf = bnx2i_conn->gen_pdu.req_buf;
		if (data_len)
			rc = FUNC3(bnx2i_conn, task,
						     buf, data_len, 1);
		else
			rc = FUNC3(bnx2i_conn, task,
						     NULL, 0, 1);
		break;
	case ISCSI_OP_LOGOUT:
		rc = FUNC2(bnx2i_conn, task);
		break;
	case ISCSI_OP_SCSI_TMFUNC:
		rc = FUNC5(bnx2i_conn, task);
		break;
	case ISCSI_OP_TEXT:
		rc = FUNC4(bnx2i_conn, task);
		break;
	default:
		FUNC6(KERN_ALERT, bnx2i_conn->cls_conn->dd_data,
				  "send_gen: unsupported op 0x%x\n",
				  task->hdr->opcode);
	}
	return rc;
}