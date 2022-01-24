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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ pa; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ pa; } ;
struct ocrdma_qp {struct ocrdma_qp* rqe_wr_id_tbl; struct ocrdma_qp* wqe_wr_id_tbl; TYPE_2__ rq; int /*<<< orphan*/  srq; TYPE_1__ sq; TYPE_3__* rq_cq; TYPE_3__* sq_cq; struct ocrdma_pd* pd; struct ocrdma_dev* dev; } ;
struct ocrdma_pd {scalar_t__ uctx; } ;
struct ocrdma_dev {int /*<<< orphan*/  dev_lock; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 struct ocrdma_qp* FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocrdma_dev*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_qp*,TYPE_3__*) ; 
 int FUNC9 (struct ocrdma_dev*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC14(struct ib_qp *ibqp)
{
	int status;
	struct ocrdma_pd *pd;
	struct ocrdma_qp *qp;
	struct ocrdma_dev *dev;
	struct ib_qp_attr attrs;
	int attr_mask = IB_QP_STATE;
	unsigned long flags;

	qp = FUNC1(ibqp);
	dev = qp->dev;

	attrs.qp_state = IB_QPS_ERR;
	pd = qp->pd;

	/* change the QP state to ERROR */
	FUNC0(ibqp, &attrs, attr_mask);

	/* ensure that CQEs for newly created QP (whose id may be same with
	 * one which just getting destroyed are same), dont get
	 * discarded until the old CQEs are discarded.
	 */
	FUNC3(&dev->dev_lock);
	status = FUNC9(dev, qp);

	/*
	 * acquire CQ lock while destroy is in progress, in order to
	 * protect against proessing in-flight CQEs for this QP.
	 */
	FUNC11(&qp->sq_cq->cq_lock, flags);
	if (qp->rq_cq && (qp->rq_cq != qp->sq_cq))
		FUNC10(&qp->rq_cq->cq_lock);

	FUNC7(dev, qp);

	if (qp->rq_cq && (qp->rq_cq != qp->sq_cq))
		FUNC12(&qp->rq_cq->cq_lock);
	FUNC13(&qp->sq_cq->cq_lock, flags);

	if (!pd->uctx) {
		FUNC8(qp, qp->sq_cq);
		FUNC8(qp, qp->rq_cq);
	}
	FUNC4(&dev->dev_lock);

	if (pd->uctx) {
		FUNC6(pd->uctx, (u64) qp->sq.pa, qp->sq.len);
		if (!qp->srq)
			FUNC6(pd->uctx, (u64) qp->rq.pa, qp->rq.len);
	}

	FUNC5(qp);

	FUNC2(qp->wqe_wr_id_tbl);
	FUNC2(qp->rqe_wr_id_tbl);
	FUNC2(qp);
	return status;
}