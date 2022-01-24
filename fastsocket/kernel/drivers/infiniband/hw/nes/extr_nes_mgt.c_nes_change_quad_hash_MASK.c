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
typedef  scalar_t__ u64 ;
struct pau_qh_chg {struct nes_qp* nesqp; struct nes_vnic* nesvnic; struct nes_device* nesdev; } ;
struct nes_vnic {int dummy; } ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {scalar_t__ nesqp_context_pbase; TYPE_1__ hwqp; int /*<<< orphan*/  pau_state; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int callback; int /*<<< orphan*/  refcount; int /*<<< orphan*/  cqp_callback; struct pau_qh_chg* cqp_callback_pointer; struct nes_hw_cqp_wqe cqp_wqe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NES_CQP_MANAGE_QUAD_HASH ; 
 int NES_CQP_QP_CONTEXT_VALID ; 
 int NES_CQP_QP_DEL_HTE ; 
 int NES_CQP_QP_IWARP_STATE_RTS ; 
 int NES_CQP_QP_TYPE_IWARP ; 
 int /*<<< orphan*/  NES_CQP_QP_WQE_CONTEXT_LOW_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_ID_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_PAU ; 
 int /*<<< orphan*/  PAU_DEL_QH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pau_qh_chg*) ; 
 struct pau_qh_chg* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nes_chg_qh_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 struct nes_cqp_request* FUNC5 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct nes_device *nesdev,
				struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
	struct nes_cqp_request *cqp_request = NULL;
	struct pau_qh_chg *qh_chg = NULL;
	u64 u64temp;
	struct nes_hw_cqp_wqe *cqp_wqe;
	int ret = 0;

	cqp_request = FUNC5(nesdev);
	if (cqp_request == NULL) {
		FUNC3(NES_DBG_PAU, "Failed to get a cqp_request.\n");
		ret = -ENOMEM;
		goto chg_qh_err;
	}

	qh_chg = FUNC2(sizeof *qh_chg, GFP_ATOMIC);
	if (qh_chg == NULL) {
		FUNC3(NES_DBG_PAU, "Failed to get a cqp_request.\n");
		ret = -ENOMEM;
		goto chg_qh_err;
	}
	qh_chg->nesdev = nesdev;
	qh_chg->nesvnic = nesvnic;
	qh_chg->nesqp = nesqp;
	nesqp->pau_state = PAU_DEL_QH;

	cqp_wqe = &cqp_request->cqp_wqe;
	FUNC4(cqp_wqe, nesdev);
	FUNC8(cqp_wqe->wqe_words,
			    NES_CQP_WQE_OPCODE_IDX, NES_CQP_MANAGE_QUAD_HASH | NES_CQP_QP_DEL_HTE |
			    NES_CQP_QP_TYPE_IWARP | NES_CQP_QP_CONTEXT_VALID | NES_CQP_QP_IWARP_STATE_RTS);
	FUNC8(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX, nesqp->hwqp.qp_id);
	u64temp = (u64)nesqp->nesqp_context_pbase;
	FUNC9(cqp_wqe->wqe_words, NES_CQP_QP_WQE_CONTEXT_LOW_IDX, u64temp);

	FUNC3(NES_DBG_PAU, "Waiting for CQP completion for deleting the quad hash.\n");

	cqp_request->cqp_callback_pointer = qh_chg;
	cqp_request->callback = 1;
	cqp_request->cqp_callback = nes_chg_qh_handler;
	FUNC0(&cqp_request->refcount, 1);
	FUNC6(nesdev, cqp_request);

	return ret;

chg_qh_err:
	FUNC1(qh_chg);
	if (cqp_request)
		FUNC7(nesdev, cqp_request);
	return ret;
}