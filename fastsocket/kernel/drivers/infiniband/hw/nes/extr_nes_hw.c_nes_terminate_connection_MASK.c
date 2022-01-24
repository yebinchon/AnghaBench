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
typedef  void* u8 ;
typedef  unsigned long u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct nes_qp {int term_flags; int terminate_eventtype; int /*<<< orphan*/  lock; scalar_t__ last_aeq; void* hw_tcp_state; void* hw_iwarp_state; } ;
struct nes_hw_aeqe {int /*<<< orphan*/ * aeqe_words; } ;
struct nes_device {int /*<<< orphan*/  iw_status; struct nes_adapter* nesadapter; } ;
struct nes_adapter {scalar_t__ send_term_ok; scalar_t__* qp_table; } ;
typedef  enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;

/* Variables and functions */
 size_t NES_AEQE_COMP_QP_CQ_ID_IDX ; 
 int NES_AEQE_IWARP_STATE_MASK ; 
 int NES_AEQE_IWARP_STATE_SHIFT ; 
 size_t NES_AEQE_MISC_IDX ; 
 int NES_AEQE_TCP_STATE_MASK ; 
 int NES_AEQE_TCP_STATE_SHIFT ; 
 int NES_CQP_QP_IWARP_STATE_ERROR ; 
 int NES_CQP_QP_IWARP_STATE_TERMINATE ; 
 int NES_CQP_QP_TERM_DONT_SEND_FIN ; 
 int NES_CQP_QP_TERM_DONT_SEND_TERM_MSG ; 
 size_t NES_FIRST_QPN ; 
 int NES_TERM_DONE ; 
 int NES_TERM_SENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nes_qp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_device*,struct nes_qp*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_qp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct nes_device *nesdev, struct nes_qp *nesqp,
		 struct nes_hw_aeqe *aeqe, enum ib_event_type eventtype)
{
	u64 context;
	unsigned long flags;
	u32 aeq_info;
	u16 async_event_id;
	u8 tcp_state;
	u8 iwarp_state;
	u32 termlen = 0;
	u32 mod_qp_flags = NES_CQP_QP_IWARP_STATE_TERMINATE |
			   NES_CQP_QP_TERM_DONT_SEND_FIN;
	struct nes_adapter *nesadapter = nesdev->nesadapter;

	if (nesqp->term_flags & NES_TERM_SENT)
		return; /* Sanity check */

	aeq_info = FUNC1(aeqe->aeqe_words[NES_AEQE_MISC_IDX]);
	tcp_state = (aeq_info & NES_AEQE_TCP_STATE_MASK) >> NES_AEQE_TCP_STATE_SHIFT;
	iwarp_state = (aeq_info & NES_AEQE_IWARP_STATE_MASK) >> NES_AEQE_IWARP_STATE_SHIFT;
	async_event_id = (u16)aeq_info;

	context = (unsigned long)nesadapter->qp_table[FUNC1(
		aeqe->aeqe_words[NES_AEQE_COMP_QP_CQ_ID_IDX]) - NES_FIRST_QPN];
	if (!context) {
		FUNC0(!context);
		return;
	}

	nesqp = (struct nes_qp *)(unsigned long)context;
	FUNC6(&nesqp->lock, flags);
	nesqp->hw_iwarp_state = iwarp_state;
	nesqp->hw_tcp_state = tcp_state;
	nesqp->last_aeq = async_event_id;
	nesqp->terminate_eventtype = eventtype;
	FUNC7(&nesqp->lock, flags);

	if (nesadapter->send_term_ok)
		termlen = FUNC2(nesqp, async_event_id, aeq_info);
	else
		mod_qp_flags |= NES_CQP_QP_TERM_DONT_SEND_TERM_MSG;

	if (!nesdev->iw_status)  {
		nesqp->term_flags = NES_TERM_DONE;
		FUNC4(nesdev, nesqp, NES_CQP_QP_IWARP_STATE_ERROR, 0, 0);
		FUNC3(nesqp);
	} else {
		FUNC5(nesqp);
		nesqp->term_flags |= NES_TERM_SENT;
		FUNC4(nesdev, nesqp, mod_qp_flags, termlen, 0);
	}
}