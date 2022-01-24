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
typedef  int u32 ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct iscsi_kwqe_conn_offload2 {int num_additional_wqes; } ;
struct iscsi_kwqe_conn_offload1 {int iscsi_conn_id; } ;
struct iscsi_kcqe {int iscsi_conn_id; int /*<<< orphan*/  iscsi_conn_context_id; int /*<<< orphan*/  completion_status; int /*<<< orphan*/  op_code; } ;
struct cnic_local {struct cnic_context* ctx_tbl; int /*<<< orphan*/  iscsi_conn; } ;
struct cnic_dev {scalar_t__ max_iscsi_conn; struct cnic_local* cnic_priv; } ;
struct cnic_context {int /*<<< orphan*/  cid; int /*<<< orphan*/  ctx_flags; } ;
typedef  int /*<<< orphan*/  kcqe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cnic_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CNIC_ULP_ISCSI ; 
 int /*<<< orphan*/  CTX_FL_OFFLD_START ; 
 int EINVAL ; 
 int /*<<< orphan*/  ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY ; 
 int /*<<< orphan*/  ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE ; 
 int /*<<< orphan*/  ISCSI_KCQE_COMPLETION_STATUS_SUCCESS ; 
 int /*<<< orphan*/  ISCSI_KCQE_OPCODE_OFFLOAD_CONN ; 
 int MAX_ISCSI_TBL_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_dev*,int /*<<< orphan*/ ,struct kcqe**,int) ; 
 int FUNC6 (struct cnic_dev*,struct kwqe**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_kcqe*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cnic_dev *dev, struct kwqe *wqes[],
				   u32 num, int *work)
{
	struct iscsi_kwqe_conn_offload1 *req1;
	struct iscsi_kwqe_conn_offload2 *req2;
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_context *ctx;
	struct iscsi_kcqe kcqe;
	struct kcqe *cqes[1];
	u32 l5_cid;
	int ret = 0;

	if (num < 2) {
		*work = num;
		return -EINVAL;
	}

	req1 = (struct iscsi_kwqe_conn_offload1 *) wqes[0];
	req2 = (struct iscsi_kwqe_conn_offload2 *) wqes[1];
	if ((num - 2) < req2->num_additional_wqes) {
		*work = num;
		return -EINVAL;
	}
	*work = 2 + req2->num_additional_wqes;

	l5_cid = req1->iscsi_conn_id;
	if (l5_cid >= MAX_ISCSI_TBL_SZ)
		return -EINVAL;

	FUNC7(&kcqe, 0, sizeof(kcqe));
	kcqe.op_code = ISCSI_KCQE_OPCODE_OFFLOAD_CONN;
	kcqe.iscsi_conn_id = l5_cid;
	kcqe.completion_status = ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE;

	ctx = &cp->ctx_tbl[l5_cid];
	if (FUNC8(CTX_FL_OFFLD_START, &ctx->ctx_flags)) {
		kcqe.completion_status =
			ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY;
		goto done;
	}

	if (FUNC2(&cp->iscsi_conn) > dev->max_iscsi_conn) {
		FUNC1(&cp->iscsi_conn);
		goto done;
	}
	ret = FUNC3(dev, l5_cid);
	if (ret) {
		FUNC1(&cp->iscsi_conn);
		ret = 0;
		goto done;
	}
	ret = FUNC6(dev, wqes, num);
	if (ret < 0) {
		FUNC4(dev, l5_cid);
		FUNC1(&cp->iscsi_conn);
		goto done;
	}

	kcqe.completion_status = ISCSI_KCQE_COMPLETION_STATUS_SUCCESS;
	kcqe.iscsi_conn_context_id = FUNC0(cp, cp->ctx_tbl[l5_cid].cid);

done:
	cqes[0] = (struct kcqe *) &kcqe;
	FUNC5(dev, CNIC_ULP_ISCSI, cqes, 1);
	return 0;
}