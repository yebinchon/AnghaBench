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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {TYPE_1__ hwqp; scalar_t__ nesqp_context_pbase; int /*<<< orphan*/  refcount; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/ * wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; int major_code; int minor_code; int /*<<< orphan*/  waitq; int /*<<< orphan*/  refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 int NES_CQP_MODIFY_QP ; 
 int NES_CQP_OP_TERMLEN_SHIFT ; 
 int NES_CQP_QP_IWARP_STATE_MASK ; 
 int NES_CQP_QP_IWARP_STATE_TERMINATE ; 
 int NES_CQP_QP_TERM_DONT_SEND_TERM_MSG ; 
 int NES_CQP_QP_TYPE_IWARP ; 
 int /*<<< orphan*/  NES_CQP_QP_WQE_CONTEXT_LOW_IDX ; 
 size_t NES_CQP_QP_WQE_NEW_MSS_IDX ; 
 size_t NES_CQP_WQE_ID_IDX ; 
 size_t NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_MOD_QP ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 struct nes_cqp_request* FUNC5 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC11(struct nes_device *nesdev, struct nes_qp *nesqp,
		u32 next_iwarp_state, u32 termlen, u32 wait_completion)
{
	struct nes_hw_cqp_wqe *cqp_wqe;
	/* struct iw_cm_id *cm_id = nesqp->cm_id; */
	/* struct iw_cm_event cm_event; */
	struct nes_cqp_request *cqp_request;
	int ret;
	u16 major_code;

	FUNC3(NES_DBG_MOD_QP, "QP%u, refcount=%d\n",
			nesqp->hwqp.qp_id, FUNC0(&nesqp->refcount));

	cqp_request = FUNC5(nesdev);
	if (cqp_request == NULL) {
		FUNC3(NES_DBG_MOD_QP, "Failed to get a cqp_request.\n");
		return -ENOMEM;
	}
	if (wait_completion) {
		cqp_request->waiting = 1;
	} else {
		cqp_request->waiting = 0;
	}
	cqp_wqe = &cqp_request->cqp_wqe;

	FUNC8(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX,
			NES_CQP_MODIFY_QP | NES_CQP_QP_TYPE_IWARP | next_iwarp_state);
	FUNC3(NES_DBG_MOD_QP, "using next_iwarp_state=%08x, wqe_words=%08x\n",
			next_iwarp_state, FUNC2(cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX]));
	FUNC4(cqp_wqe, nesdev);
	FUNC8(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX, nesqp->hwqp.qp_id);
	FUNC9(cqp_wqe->wqe_words, NES_CQP_QP_WQE_CONTEXT_LOW_IDX, (u64)nesqp->nesqp_context_pbase);

	/* If sending a terminate message, fill in the length (in words) */
	if (((next_iwarp_state & NES_CQP_QP_IWARP_STATE_MASK) == NES_CQP_QP_IWARP_STATE_TERMINATE) &&
	    !(next_iwarp_state & NES_CQP_QP_TERM_DONT_SEND_TERM_MSG)) {
		termlen = ((termlen + 3) >> 2) << NES_CQP_OP_TERMLEN_SHIFT;
		FUNC8(cqp_wqe->wqe_words, NES_CQP_QP_WQE_NEW_MSS_IDX, termlen);
	}

	FUNC1(&cqp_request->refcount, 2);
	FUNC6(nesdev, cqp_request);

	/* Wait for CQP */
	if (wait_completion) {
		/* nes_debug(NES_DBG_MOD_QP, "Waiting for modify iWARP QP%u to complete.\n",
				nesqp->hwqp.qp_id); */
		ret = FUNC10(cqp_request->waitq, (cqp_request->request_done != 0),
				NES_EVENT_TIMEOUT);
		FUNC3(NES_DBG_MOD_QP, "Modify iwarp QP%u completed, wait_event_timeout ret=%u, "
				"CQP Major:Minor codes = 0x%04X:0x%04X.\n",
				nesqp->hwqp.qp_id, ret, cqp_request->major_code, cqp_request->minor_code);
		major_code = cqp_request->major_code;
		if (major_code) {
			FUNC3(NES_DBG_MOD_QP, "Modify iwarp QP%u failed"
					"CQP Major:Minor codes = 0x%04X:0x%04X, intended next state = 0x%08X.\n",
					nesqp->hwqp.qp_id, cqp_request->major_code,
					cqp_request->minor_code, next_iwarp_state);
		}

		FUNC7(nesdev, cqp_request);

		if (!ret)
			return -ETIME;
		else if (major_code)
			return -EIO;
		else
			return 0;
	} else {
		return 0;
	}
}