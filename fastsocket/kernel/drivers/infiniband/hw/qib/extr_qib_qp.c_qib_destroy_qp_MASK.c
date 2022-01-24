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
struct TYPE_6__ {int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp_num; } ;
struct qib_qp {scalar_t__ state; int s_flags; struct qib_qp* s_hdr; int /*<<< orphan*/  s_wq; TYPE_3__ r_rq; TYPE_2__* ip; TYPE_1__ ibqp; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; int /*<<< orphan*/ * s_tx; int /*<<< orphan*/  s_dma_busy; int /*<<< orphan*/  wait_dma; int /*<<< orphan*/  s_timer; int /*<<< orphan*/  s_work; int /*<<< orphan*/  iowait; } ;
struct qib_ibdev {int /*<<< orphan*/  n_qps_lock; int /*<<< orphan*/  n_qps_allocated; int /*<<< orphan*/  qpn_table; int /*<<< orphan*/  pending_lock; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 int QIB_S_ANY_WAIT ; 
 int QIB_S_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_qp*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_release_mmap_info ; 
 int /*<<< orphan*/  FUNC10 (struct qib_ibdev*,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct qib_ibdev* FUNC15 (int /*<<< orphan*/ ) ; 
 struct qib_qp* FUNC16 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

int FUNC19(struct ib_qp *ibqp)
{
	struct qib_qp *qp = FUNC16(ibqp);
	struct qib_ibdev *dev = FUNC15(ibqp->device);

	/* Make sure HW and driver activity is stopped. */
	FUNC12(&qp->s_lock);
	if (qp->state != IB_QPS_RESET) {
		qp->state = IB_QPS_RESET;
		FUNC11(&dev->pending_lock);
		if (!FUNC8(&qp->iowait))
			FUNC7(&qp->iowait);
		FUNC13(&dev->pending_lock);
		qp->s_flags &= ~(QIB_S_TIMER | QIB_S_ANY_WAIT);
		FUNC14(&qp->s_lock);
		FUNC1(&qp->s_work);
		FUNC3(&qp->s_timer);
		FUNC18(qp->wait_dma, !FUNC0(&qp->s_dma_busy));
		if (qp->s_tx) {
			FUNC9(qp->s_tx);
			qp->s_tx = NULL;
		}
		FUNC10(dev, qp);
		FUNC18(qp->wait, !FUNC0(&qp->refcount));
		FUNC2(qp, 1);
	} else
		FUNC14(&qp->s_lock);

	/* all user's cleaned up, mark it available */
	FUNC4(&dev->qpn_table, qp->ibqp.qp_num);
	FUNC11(&dev->n_qps_lock);
	dev->n_qps_allocated--;
	FUNC13(&dev->n_qps_lock);

	if (qp->ip)
		FUNC6(&qp->ip->ref, qib_release_mmap_info);
	else
		FUNC17(qp->r_rq.wq);
	FUNC17(qp->s_wq);
	FUNC5(qp->s_hdr);
	FUNC5(qp);
	return 0;
}