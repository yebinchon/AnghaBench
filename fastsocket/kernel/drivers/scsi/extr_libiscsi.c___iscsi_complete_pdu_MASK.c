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
typedef  unsigned int uint32_t ;
struct iscsi_task {void* last_xfer; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int opcode; scalar_t__ itt; int /*<<< orphan*/  statsn; int /*<<< orphan*/  ttt; } ;
struct iscsi_conn {int /*<<< orphan*/  cls_conn; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  id; void* last_recv; struct iscsi_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int ISCSI_ERR_BAD_ITT ; 
 int ISCSI_ERR_BAD_OPCODE ; 
 int ISCSI_ERR_CONN_FAILED ; 
 int ISCSI_ERR_PROTO ; 
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_ASYNC_EVENT 137 
#define  ISCSI_OP_LOGIN_RSP 136 
#define  ISCSI_OP_LOGOUT_RSP 135 
#define  ISCSI_OP_NOOP_IN 134 
#define  ISCSI_OP_R2T 133 
#define  ISCSI_OP_REJECT 132 
#define  ISCSI_OP_SCSI_CMD_RSP 131 
#define  ISCSI_OP_SCSI_DATA_IN 130 
#define  ISCSI_OP_SCSI_TMFUNC_RSP 129 
#define  ISCSI_OP_TEXT_RSP 128 
 int /*<<< orphan*/  ISCSI_RESERVED_TAG ; 
 int /*<<< orphan*/  ISCSI_TASK_COMPLETED ; 
 scalar_t__ RESERVED_ITT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*,struct iscsi_hdr*,struct iscsi_task*) ; 
 int FUNC6 (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ; 
 struct iscsi_task* FUNC7 (struct iscsi_conn*,scalar_t__) ; 
 struct iscsi_task* FUNC8 (struct iscsi_conn*,scalar_t__) ; 
 int FUNC9 (struct iscsi_task*,struct iscsi_nopin*,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct iscsi_hdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct iscsi_conn*,struct iscsi_hdr*,struct iscsi_task*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iscsi_conn*,struct iscsi_nopin*) ; 
 int /*<<< orphan*/  FUNC13 (struct iscsi_conn*,struct iscsi_hdr*) ; 
 int /*<<< orphan*/  FUNC14 (struct iscsi_session*,struct iscsi_nopin*) ; 
 int FUNC15 (struct iscsi_conn*,scalar_t__) ; 
 void* jiffies ; 

int FUNC16(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
			 char *data, int datalen)
{
	struct iscsi_session *session = conn->session;
	int opcode = hdr->opcode & ISCSI_OPCODE_MASK, rc = 0;
	struct iscsi_task *task;
	uint32_t itt;

	conn->last_recv = jiffies;
	rc = FUNC15(conn, hdr->itt);
	if (rc)
		return rc;

	if (hdr->itt != RESERVED_ITT)
		itt = FUNC3(hdr->itt);
	else
		itt = ~0U;

	FUNC0(session, "[op 0x%x cid %d itt 0x%x len %d]\n",
			  opcode, conn->id, itt, datalen);

	if (itt == ~0U) {
		FUNC14(session, (struct iscsi_nopin*)hdr);

		switch(opcode) {
		case ISCSI_OP_NOOP_IN:
			if (datalen) {
				rc = ISCSI_ERR_PROTO;
				break;
			}

			if (hdr->ttt == FUNC2(ISCSI_RESERVED_TAG))
				break;

			FUNC12(conn, (struct iscsi_nopin*)hdr);
			break;
		case ISCSI_OP_REJECT:
			rc = FUNC6(conn, hdr, data, datalen);
			break;
		case ISCSI_OP_ASYNC_EVENT:
			conn->exp_statsn = FUNC1(hdr->statsn) + 1;
			if (FUNC10(conn->cls_conn, hdr, data, datalen))
				rc = ISCSI_ERR_CONN_FAILED;
			break;
		default:
			rc = ISCSI_ERR_BAD_OPCODE;
			break;
		}
		goto out;
	}

	switch(opcode) {
	case ISCSI_OP_SCSI_CMD_RSP:
	case ISCSI_OP_SCSI_DATA_IN:
		task = FUNC7(conn, hdr->itt);
		if (!task)
			return ISCSI_ERR_BAD_ITT;
		task->last_xfer = jiffies;
		break;
	case ISCSI_OP_R2T:
		/*
		 * LLD handles R2Ts if they need to.
		 */
		return 0;
	case ISCSI_OP_LOGOUT_RSP:
	case ISCSI_OP_LOGIN_RSP:
	case ISCSI_OP_TEXT_RSP:
	case ISCSI_OP_SCSI_TMFUNC_RSP:
	case ISCSI_OP_NOOP_IN:
		task = FUNC8(conn, hdr->itt);
		if (!task)
			return ISCSI_ERR_BAD_ITT;
		break;
	default:
		return ISCSI_ERR_BAD_OPCODE;
	}

	switch(opcode) {
	case ISCSI_OP_SCSI_CMD_RSP:
		FUNC11(conn, hdr, task, data, datalen);
		break;
	case ISCSI_OP_SCSI_DATA_IN:
		FUNC5(conn, hdr, task);
		break;
	case ISCSI_OP_LOGOUT_RSP:
		FUNC14(session, (struct iscsi_nopin*)hdr);
		if (datalen) {
			rc = ISCSI_ERR_PROTO;
			break;
		}
		conn->exp_statsn = FUNC1(hdr->statsn) + 1;
		goto recv_pdu;
	case ISCSI_OP_LOGIN_RSP:
	case ISCSI_OP_TEXT_RSP:
		FUNC14(session, (struct iscsi_nopin*)hdr);
		/*
		 * login related PDU's exp_statsn is handled in
		 * userspace
		 */
		goto recv_pdu;
	case ISCSI_OP_SCSI_TMFUNC_RSP:
		FUNC14(session, (struct iscsi_nopin*)hdr);
		if (datalen) {
			rc = ISCSI_ERR_PROTO;
			break;
		}

		FUNC13(conn, hdr);
		FUNC4(task, ISCSI_TASK_COMPLETED);
		break;
	case ISCSI_OP_NOOP_IN:
		FUNC14(session, (struct iscsi_nopin*)hdr);
		if (hdr->ttt != FUNC2(ISCSI_RESERVED_TAG) || datalen) {
			rc = ISCSI_ERR_PROTO;
			break;
		}
		conn->exp_statsn = FUNC1(hdr->statsn) + 1;

		rc = FUNC9(task, (struct iscsi_nopin*)hdr,
				       data, datalen);
		break;
	default:
		rc = ISCSI_ERR_BAD_OPCODE;
		break;
	}

out:
	return rc;
recv_pdu:
	if (FUNC10(conn->cls_conn, hdr, data, datalen))
		rc = ISCSI_ERR_CONN_FAILED;
	FUNC4(task, ISCSI_TASK_COMPLETED);
	return rc;
}