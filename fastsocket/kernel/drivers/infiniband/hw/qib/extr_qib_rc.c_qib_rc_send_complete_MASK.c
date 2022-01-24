#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {unsigned int num_sge; int send_flags; size_t opcode; int /*<<< orphan*/  wr_id; } ;
struct qib_swqe {int /*<<< orphan*/  length; TYPE_3__ wr; struct qib_sge* sg_list; scalar_t__ lpsn; } ;
struct qib_sge {int /*<<< orphan*/  mr; } ;
struct TYPE_8__ {int /*<<< orphan*/  send_cq; } ;
struct qib_qp {size_t state; scalar_t__ s_acked; scalar_t__ s_tail; int s_flags; scalar_t__ s_last; scalar_t__ s_size; scalar_t__ s_psn; scalar_t__ s_sending_hpsn; scalar_t__ s_sending_psn; TYPE_4__ ibqp; int /*<<< orphan*/  s_rdma_ack_cnt; } ;
struct qib_other_headers {int /*<<< orphan*/ * bth; } ;
struct TYPE_5__ {struct qib_other_headers oth; } ;
struct TYPE_6__ {TYPE_1__ l; struct qib_other_headers oth; } ;
struct qib_ib_header {TYPE_2__ u; int /*<<< orphan*/ * lrh; } ;
struct ib_wc {TYPE_4__* qp; int /*<<< orphan*/  byte_len; int /*<<< orphan*/  opcode; int /*<<< orphan*/  status; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACKNOWLEDGE ; 
 int IB_BTH_REQ_ACK ; 
 int IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QIB_LRH_BTH ; 
 int QIB_PROCESS_OR_FLUSH_SEND ; 
 int QIB_PROCESS_RECV_OK ; 
 int QIB_S_SIGNAL_REQ_WR ; 
 int QIB_S_TIMER ; 
 int QIB_S_WAIT_PSN ; 
 int QIB_S_WAIT_RNR ; 
 int /*<<< orphan*/  RDMA_READ_RESPONSE_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct qib_swqe* FUNC4 (struct qib_qp*,scalar_t__) ; 
 int* ib_qib_state_ops ; 
 int /*<<< orphan*/ * ib_qib_wc_opcode ; 
 int /*<<< orphan*/  FUNC5 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ib_wc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_qp*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct qib_qp *qp, struct qib_ib_header *hdr)
{
	struct qib_other_headers *ohdr;
	struct qib_swqe *wqe;
	struct ib_wc wc;
	unsigned i;
	u32 opcode;
	u32 psn;

	if (!(ib_qib_state_ops[qp->state] & QIB_PROCESS_OR_FLUSH_SEND))
		return;

	/* Find out where the BTH is */
	if ((FUNC2(hdr->lrh[0]) & 3) == QIB_LRH_BTH)
		ohdr = &hdr->u.oth;
	else
		ohdr = &hdr->u.l.oth;

	opcode = FUNC3(ohdr->bth[0]) >> 24;
	if (opcode >= FUNC0(RDMA_READ_RESPONSE_FIRST) &&
	    opcode <= FUNC0(ATOMIC_ACKNOWLEDGE)) {
		FUNC1(!qp->s_rdma_ack_cnt);
		qp->s_rdma_ack_cnt--;
		return;
	}

	psn = FUNC3(ohdr->bth[2]);
	FUNC10(qp, psn);

	/*
	 * Start timer after a packet requesting an ACK has been sent and
	 * there are still requests that haven't been acked.
	 */
	if ((psn & IB_BTH_REQ_ACK) && qp->s_acked != qp->s_tail &&
	    !(qp->s_flags & (QIB_S_TIMER | QIB_S_WAIT_RNR | QIB_S_WAIT_PSN)) &&
	    (ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK))
		FUNC11(qp);

	while (qp->s_last != qp->s_acked) {
		wqe = FUNC4(qp, qp->s_last);
		if (FUNC6(wqe->lpsn, qp->s_sending_psn) >= 0 &&
		    FUNC6(qp->s_sending_psn, qp->s_sending_hpsn) <= 0)
			break;
		for (i = 0; i < wqe->wr.num_sge; i++) {
			struct qib_sge *sge = &wqe->sg_list[i];

			FUNC8(sge->mr);
		}
		/* Post a send completion queue entry if requested. */
		if (!(qp->s_flags & QIB_S_SIGNAL_REQ_WR) ||
		    (wqe->wr.send_flags & IB_SEND_SIGNALED)) {
			FUNC5(&wc, 0, sizeof wc);
			wc.wr_id = wqe->wr.wr_id;
			wc.status = IB_WC_SUCCESS;
			wc.opcode = ib_qib_wc_opcode[wqe->wr.opcode];
			wc.byte_len = wqe->length;
			wc.qp = &qp->ibqp;
			FUNC7(FUNC12(qp->ibqp.send_cq), &wc, 0);
		}
		if (++qp->s_last >= qp->s_size)
			qp->s_last = 0;
	}
	/*
	 * If we were waiting for sends to complete before resending,
	 * and they are now complete, restart sending.
	 */
	if (qp->s_flags & QIB_S_WAIT_PSN &&
	    FUNC6(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
		qp->s_flags &= ~QIB_S_WAIT_PSN;
		qp->s_sending_psn = qp->s_psn;
		qp->s_sending_hpsn = qp->s_psn - 1;
		FUNC9(qp);
	}
}