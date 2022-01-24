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
typedef  unsigned long u64 ;
typedef  size_t u32 ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/ * wqe_words; } ;
struct TYPE_3__ {int sq_tail; int sq_size; int sq_head; int qp_id; int /*<<< orphan*/  lock; struct nes_hw_cqp_wqe* sq_vbase; } ;
struct nes_device {TYPE_1__ cqp; int /*<<< orphan*/  cqp_pending_reqs; scalar_t__ regs; } ;
struct TYPE_4__ {int /*<<< orphan*/ * wqe_words; } ;
struct nes_cqp_request {int /*<<< orphan*/  list; TYPE_2__ cqp_wqe; int /*<<< orphan*/  refcount; int /*<<< orphan*/  waiting; } ;

/* Variables and functions */
 size_t NES_CQP_DOWNLOAD_SEGMENT ; 
 size_t NES_CQP_OPCODE_MASK ; 
 int NES_CQP_WQE_COMP_CTX_LOW_IDX ; 
 int NES_CQP_WQE_DL_COMP_CTX_LOW_IDX ; 
 size_t NES_CQP_WQE_ID_IDX ; 
 size_t NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_CQP ; 
 scalar_t__ NES_WQE_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_hw_cqp_wqe*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct nes_device *nesdev,
			  struct nes_cqp_request *cqp_request)
{
	struct nes_hw_cqp_wqe *cqp_wqe;
	unsigned long flags;
	u32 cqp_head;
	u64 u64temp;
	u32 opcode;
	int ctx_index = NES_CQP_WQE_COMP_CTX_LOW_IDX;

	FUNC9(&nesdev->cqp.lock, flags);

	if (((((nesdev->cqp.sq_tail+(nesdev->cqp.sq_size*2))-nesdev->cqp.sq_head) &
			(nesdev->cqp.sq_size - 1)) != 1)
			&& (FUNC4(&nesdev->cqp_pending_reqs))) {
		cqp_head = nesdev->cqp.sq_head++;
		nesdev->cqp.sq_head &= nesdev->cqp.sq_size-1;
		cqp_wqe = &nesdev->cqp.sq_vbase[cqp_head];
		FUNC5(cqp_wqe, &cqp_request->cqp_wqe, sizeof(*cqp_wqe));
		opcode = FUNC2(cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX]);
		if ((opcode & NES_CQP_OPCODE_MASK) == NES_CQP_DOWNLOAD_SEGMENT)
			ctx_index = NES_CQP_WQE_DL_COMP_CTX_LOW_IDX;
		FUNC1();
		u64temp = (unsigned long)cqp_request;
		FUNC8(cqp_wqe->wqe_words, ctx_index, u64temp);
		FUNC6(NES_DBG_CQP, "CQP request (opcode 0x%02X), line 1 = 0x%08X put on CQPs SQ,"
			" request = %p, cqp_head = %u, cqp_tail = %u, cqp_size = %u,"
			" waiting = %d, refcount = %d.\n",
			opcode & NES_CQP_OPCODE_MASK,
			FUNC2(cqp_wqe->wqe_words[NES_CQP_WQE_ID_IDX]), cqp_request,
			nesdev->cqp.sq_head, nesdev->cqp.sq_tail, nesdev->cqp.sq_size,
			cqp_request->waiting, FUNC0(&cqp_request->refcount));

		FUNC1();

		/* Ring doorbell (1 WQEs) */
		FUNC7(nesdev->regs+NES_WQE_ALLOC, 0x01800000 | nesdev->cqp.qp_id);

		FUNC1();
	} else {
		FUNC6(NES_DBG_CQP, "CQP request %p (opcode 0x%02X), line 1 = 0x%08X"
				" put on the pending queue.\n",
				cqp_request,
				FUNC2(cqp_request->cqp_wqe.wqe_words[NES_CQP_WQE_OPCODE_IDX])&0x3f,
				FUNC2(cqp_request->cqp_wqe.wqe_words[NES_CQP_WQE_ID_IDX]));
		FUNC3(&cqp_request->list, &nesdev->cqp_pending_reqs);
	}

	FUNC10(&nesdev->cqp.lock, flags);

	return;
}