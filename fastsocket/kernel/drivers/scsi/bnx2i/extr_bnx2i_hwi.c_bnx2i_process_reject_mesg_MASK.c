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
struct iscsi_session {int /*<<< orphan*/  lock; } ;
struct iscsi_reject {void* ffffffff; void* exp_cmdsn; void* max_cmdsn; int /*<<< orphan*/  dlength; int /*<<< orphan*/  reason; int /*<<< orphan*/  opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  data; } ;
struct cqe {int dummy; } ;
struct bnx2i_reject_msg {int /*<<< orphan*/  data_length; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  reason; int /*<<< orphan*/  op_code; } ;
struct TYPE_4__ {int /*<<< orphan*/  resp_hdr; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; TYPE_1__* cls_conn; } ;
struct TYPE_3__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESERVED_ITT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2i_conn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2i_conn*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_reject*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct iscsi_session *session,
				      struct bnx2i_conn *bnx2i_conn,
				      struct cqe *cqe)
{
	struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
	struct bnx2i_reject_msg *reject;
	struct iscsi_reject *hdr;

	reject = (struct bnx2i_reject_msg *) cqe;
	if (reject->data_length) {
		FUNC1(bnx2i_conn, conn->data, reject->data_length);
		FUNC2(bnx2i_conn, 1);
	} else
		FUNC3(bnx2i_conn);

	FUNC7(&session->lock);
	hdr = (struct iscsi_reject *) &bnx2i_conn->gen_pdu.resp_hdr;
	FUNC6(hdr, 0, sizeof(struct iscsi_hdr));
	hdr->opcode = reject->op_code;
	hdr->reason = reject->reason;
	FUNC5(hdr->dlength, reject->data_length);
	hdr->max_cmdsn = FUNC4(reject->max_cmd_sn);
	hdr->exp_cmdsn = FUNC4(reject->exp_cmd_sn);
	hdr->ffffffff = FUNC4(RESERVED_ITT);
	FUNC0(conn, (struct iscsi_hdr *)hdr, conn->data,
			     reject->data_length);
	FUNC8(&session->lock);
}