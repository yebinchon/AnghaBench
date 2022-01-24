#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  wq; } ;
struct TYPE_8__ {int /*<<< orphan*/  qp_num; } ;
struct ipath_qp {scalar_t__ state; int /*<<< orphan*/  s_wq; struct ipath_qp* r_ud_sg_list; TYPE_5__ r_rq; TYPE_4__* ip; TYPE_3__ ibqp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; TYPE_2__* s_tx; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_dma_busy; int /*<<< orphan*/  wait_dma; int /*<<< orphan*/  s_task; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  piowait; int /*<<< orphan*/  timerwait; } ;
struct ipath_ibdev {int /*<<< orphan*/  n_qps_lock; int /*<<< orphan*/  n_qps_allocated; int /*<<< orphan*/  qp_table; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  txreq_free; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  list; struct ipath_qp* map_addr; } ;
struct TYPE_7__ {TYPE_1__ txreq; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 int IPATH_SDMA_TXREQ_F_FREEBUF ; 
 int /*<<< orphan*/  IPATH_S_ANY_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipath_qp*) ; 
 int /*<<< orphan*/  ipath_release_mmap_info ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct ipath_ibdev* FUNC14 (int /*<<< orphan*/ ) ; 
 struct ipath_qp* FUNC15 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

int FUNC18(struct ib_qp *ibqp)
{
	struct ipath_qp *qp = FUNC15(ibqp);
	struct ipath_ibdev *dev = FUNC14(ibqp->device);

	/* Make sure HW and driver activity is stopped. */
	FUNC10(&qp->s_lock);
	if (qp->state != IB_QPS_RESET) {
		qp->state = IB_QPS_RESET;
		FUNC9(&dev->pending_lock);
		if (!FUNC8(&qp->timerwait))
			FUNC7(&qp->timerwait);
		if (!FUNC8(&qp->piowait))
			FUNC7(&qp->piowait);
		FUNC11(&dev->pending_lock);
		qp->s_flags &= ~IPATH_S_ANY_WAIT;
		FUNC12(&qp->s_lock);
		/* Stop the sending tasklet */
		FUNC13(&qp->s_task);
		FUNC17(qp->wait_dma, !FUNC1(&qp->s_dma_busy));
	} else
		FUNC12(&qp->s_lock);

	FUNC3(&dev->qp_table, qp);

	if (qp->s_tx) {
		FUNC0(&qp->refcount);
		if (qp->s_tx->txreq.flags & IPATH_SDMA_TXREQ_F_FREEBUF)
			FUNC4(qp->s_tx->txreq.map_addr);
		FUNC10(&dev->pending_lock);
		FUNC6(&qp->s_tx->txreq.list, &dev->txreq_free);
		FUNC12(&dev->pending_lock);
		qp->s_tx = NULL;
	}

	FUNC17(qp->wait, !FUNC1(&qp->refcount));

	/* all user's cleaned up, mark it available */
	FUNC2(&dev->qp_table, qp->ibqp.qp_num);
	FUNC9(&dev->n_qps_lock);
	dev->n_qps_allocated--;
	FUNC11(&dev->n_qps_lock);

	if (qp->ip)
		FUNC5(&qp->ip->ref, ipath_release_mmap_info);
	else
		FUNC16(qp->r_rq.wq);
	FUNC4(qp->r_ud_sg_list);
	FUNC16(qp->s_wq);
	FUNC4(qp);
	return 0;
}