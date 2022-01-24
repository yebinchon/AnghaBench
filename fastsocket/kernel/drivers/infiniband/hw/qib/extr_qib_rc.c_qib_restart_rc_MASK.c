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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ opcode; } ;
struct qib_swqe {TYPE_2__ wr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct qib_qp {scalar_t__ s_acked; scalar_t__ s_retry; scalar_t__ s_mig_state; scalar_t__ s_retry_cnt; scalar_t__ s_last; int s_psn; int s_flags; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; } ;
struct qib_ibport {scalar_t__ n_rc_resends; } ;

/* Variables and functions */
 scalar_t__ IB_MIG_ARMED ; 
 int /*<<< orphan*/  IB_WC_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 int QIB_PSN_MASK ; 
 int QIB_S_SEND_ONE ; 
 int QIB_S_WAIT_ACK ; 
 int QIB_S_WAIT_FENCE ; 
 int QIB_S_WAIT_PSN ; 
 int QIB_S_WAIT_RDMAR ; 
 int QIB_S_WAIT_SSN_CREDIT ; 
 struct qib_swqe* FUNC0 (struct qib_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_qp*,struct qib_swqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_qp*,int) ; 
 struct qib_ibport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qib_qp *qp, u32 psn, int wait)
{
	struct qib_swqe *wqe = FUNC0(qp, qp->s_acked);
	struct qib_ibport *ibp;

	if (qp->s_retry == 0) {
		if (qp->s_mig_state == IB_MIG_ARMED) {
			FUNC2(qp);
			qp->s_retry = qp->s_retry_cnt;
		} else if (qp->s_last == qp->s_acked) {
			FUNC3(qp, wqe, IB_WC_RETRY_EXC_ERR);
			FUNC1(qp, IB_WC_WR_FLUSH_ERR);
			return;
		} else /* XXX need to handle delayed completion */
			return;
	} else
		qp->s_retry--;

	ibp = FUNC5(qp->ibqp.device, qp->port_num);
	if (wqe->wr.opcode == IB_WR_RDMA_READ)
		ibp->n_rc_resends++;
	else
		ibp->n_rc_resends += (qp->s_psn - psn) & QIB_PSN_MASK;

	qp->s_flags &= ~(QIB_S_WAIT_FENCE | QIB_S_WAIT_RDMAR |
			 QIB_S_WAIT_SSN_CREDIT | QIB_S_WAIT_PSN |
			 QIB_S_WAIT_ACK);
	if (wait)
		qp->s_flags |= QIB_S_SEND_ONE;
	FUNC4(qp, psn);
}