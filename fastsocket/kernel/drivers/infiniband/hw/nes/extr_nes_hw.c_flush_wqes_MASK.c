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
typedef  int u32 ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {int term_sq_flush_code; int term_rq_flush_code; TYPE_1__ hwqp; } ;
struct nes_hw_cqp_wqe {void** wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  major_code; int /*<<< orphan*/  waitq; struct nes_hw_cqp_wqe cqp_wqe; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int CQE_MAJOR_DRV ; 
 int NES_CQP_FLUSH_MAJ_MIN ; 
 int NES_CQP_FLUSH_RQ ; 
 int NES_CQP_FLUSH_SQ ; 
 int NES_CQP_FLUSH_WQES ; 
 size_t NES_CQP_QP_WQE_FLUSH_RQ_CODE ; 
 size_t NES_CQP_QP_WQE_FLUSH_SQ_CODE ; 
 size_t NES_CQP_WQE_ID_IDX ; 
 size_t NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_QP ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 int NES_IWARP_CQE_MAJOR_FLUSH ; 
 int NES_IWARP_CQE_MINOR_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 struct nes_cqp_request* FUNC4 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_device*,struct nes_cqp_request*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC8(struct nes_device *nesdev, struct nes_qp *nesqp,
		u32 which_wq, u32 wait_completion)
{
	struct nes_cqp_request *cqp_request;
	struct nes_hw_cqp_wqe *cqp_wqe;
	u32 sq_code = (NES_IWARP_CQE_MAJOR_FLUSH << 16) | NES_IWARP_CQE_MINOR_FLUSH;
	u32 rq_code = (NES_IWARP_CQE_MAJOR_FLUSH << 16) | NES_IWARP_CQE_MINOR_FLUSH;
	int ret;

	cqp_request = FUNC4(nesdev);
	if (cqp_request == NULL) {
		FUNC2(NES_DBG_QP, "Failed to get a cqp_request.\n");
		return;
	}
	if (wait_completion) {
		cqp_request->waiting = 1;
		FUNC0(&cqp_request->refcount, 2);
	} else {
		cqp_request->waiting = 0;
	}
	cqp_wqe = &cqp_request->cqp_wqe;
	FUNC3(cqp_wqe, nesdev);

	/* If wqe in error was identified, set code to be put into cqe */
	if ((nesqp->term_sq_flush_code) && (which_wq & NES_CQP_FLUSH_SQ)) {
		which_wq |= NES_CQP_FLUSH_MAJ_MIN;
		sq_code = (CQE_MAJOR_DRV << 16) | nesqp->term_sq_flush_code;
		nesqp->term_sq_flush_code = 0;
	}

	if ((nesqp->term_rq_flush_code) && (which_wq & NES_CQP_FLUSH_RQ)) {
		which_wq |= NES_CQP_FLUSH_MAJ_MIN;
		rq_code = (CQE_MAJOR_DRV << 16) | nesqp->term_rq_flush_code;
		nesqp->term_rq_flush_code = 0;
	}

	if (which_wq & NES_CQP_FLUSH_MAJ_MIN) {
		cqp_wqe->wqe_words[NES_CQP_QP_WQE_FLUSH_SQ_CODE] = FUNC1(sq_code);
		cqp_wqe->wqe_words[NES_CQP_QP_WQE_FLUSH_RQ_CODE] = FUNC1(rq_code);
	}

	cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX] =
			FUNC1(NES_CQP_FLUSH_WQES | which_wq);
	cqp_wqe->wqe_words[NES_CQP_WQE_ID_IDX] = FUNC1(nesqp->hwqp.qp_id);

	FUNC5(nesdev, cqp_request);

	if (wait_completion) {
		/* Wait for CQP */
		ret = FUNC7(cqp_request->waitq, (cqp_request->request_done != 0),
				NES_EVENT_TIMEOUT);
		FUNC2(NES_DBG_QP, "Flush SQ QP WQEs completed, ret=%u,"
				" CQP Major:Minor codes = 0x%04X:0x%04X\n",
				ret, cqp_request->major_code, cqp_request->minor_code);
		FUNC6(nesdev, cqp_request);
	}
}