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
struct ipath_swqe {TYPE_2__ wr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct ipath_qp {scalar_t__ s_retry; int s_psn; int /*<<< orphan*/  piowait; int /*<<< orphan*/  timerwait; TYPE_1__ ibqp; int /*<<< orphan*/  s_last; } ;
struct ipath_ibdev {scalar_t__ n_rc_resends; int /*<<< orphan*/  pending_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_RETRY_EXC_ERR ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 int IPATH_PSN_MASK ; 
 struct ipath_swqe* FUNC0 (struct ipath_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_qp*,struct ipath_swqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_qp*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ipath_ibdev* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct ipath_qp *qp, u32 psn)
{
	struct ipath_swqe *wqe = FUNC0(qp, qp->s_last);
	struct ipath_ibdev *dev;

	if (qp->s_retry == 0) {
		FUNC3(qp, wqe, IB_WC_RETRY_EXC_ERR);
		FUNC1(qp, IB_WC_WR_FLUSH_ERR);
		goto bail;
	}
	qp->s_retry--;

	/*
	 * Remove the QP from the timeout queue.
	 * Note: it may already have been removed by ipath_ib_timer().
	 */
	dev = FUNC9(qp->ibqp.device);
	FUNC7(&dev->pending_lock);
	if (!FUNC5(&qp->timerwait))
		FUNC4(&qp->timerwait);
	if (!FUNC5(&qp->piowait))
		FUNC4(&qp->piowait);
	FUNC8(&dev->pending_lock);

	if (wqe->wr.opcode == IB_WR_RDMA_READ)
		dev->n_rc_resends++;
	else
		dev->n_rc_resends += (qp->s_psn - psn) & IPATH_PSN_MASK;

	FUNC6(qp, psn);
	FUNC2(qp);

bail:
	return;
}