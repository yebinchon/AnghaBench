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
struct iscsi_tm_rsp {int /*<<< orphan*/  response; int /*<<< orphan*/  itt; void* exp_cmdsn; void* max_cmdsn; int /*<<< orphan*/  opcode; } ;
struct iscsi_task {TYPE_3__* hdr; } ;
struct iscsi_session {int /*<<< orphan*/  lock; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct cqe {int dummy; } ;
struct bnx2i_tmf_response {int itt; int /*<<< orphan*/  response; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  op_code; } ;
struct TYPE_5__ {int /*<<< orphan*/  resp_hdr; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; TYPE_1__* cls_conn; } ;
struct TYPE_6__ {int /*<<< orphan*/  itt; } ;
struct TYPE_4__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int ISCSI_TMF_RESPONSE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct iscsi_task* FUNC2 (struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_tm_rsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iscsi_session *session,
				  struct bnx2i_conn *bnx2i_conn,
				  struct cqe *cqe)
{
	struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
	struct iscsi_task *task;
	struct bnx2i_tmf_response *tmf_cqe;
	struct iscsi_tm_rsp *resp_hdr;

	tmf_cqe = (struct bnx2i_tmf_response *)cqe;
	FUNC4(&session->lock);
	task = FUNC2(conn,
				 tmf_cqe->itt & ISCSI_TMF_RESPONSE_INDEX);
	if (!task)
		goto done;

	resp_hdr = (struct iscsi_tm_rsp *) &bnx2i_conn->gen_pdu.resp_hdr;
	FUNC3(resp_hdr, 0, sizeof(struct iscsi_hdr));
	resp_hdr->opcode = tmf_cqe->op_code;
	resp_hdr->max_cmdsn = FUNC1(tmf_cqe->max_cmd_sn);
	resp_hdr->exp_cmdsn = FUNC1(tmf_cqe->exp_cmd_sn);
	resp_hdr->itt = task->hdr->itt;
	resp_hdr->response = tmf_cqe->response;

	FUNC0(conn, (struct iscsi_hdr *)resp_hdr, NULL, 0);
done:
	FUNC5(&session->lock);
	return 0;
}