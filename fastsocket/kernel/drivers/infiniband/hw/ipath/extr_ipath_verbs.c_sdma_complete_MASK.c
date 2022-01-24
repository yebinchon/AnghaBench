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
struct TYPE_4__ {int flags; int /*<<< orphan*/  map_addr; } ;
struct ipath_verbs_txreq {TYPE_2__ txreq; scalar_t__ wqe; struct ipath_qp* qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct ipath_qp {size_t state; scalar_t__ s_last; scalar_t__ s_head; int s_flags; int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  wait_dma; int /*<<< orphan*/  s_dma_busy; TYPE_1__ ibqp; } ;
struct ipath_ibdev {int dummy; } ;
typedef  enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;

/* Variables and functions */
 int IB_WC_SUCCESS ; 
 int IB_WC_WR_FLUSH_ERR ; 
 int IPATH_FLUSH_SEND ; 
 int IPATH_SDMA_TXREQ_F_FREEBUF ; 
 int IPATH_SDMA_TXREQ_S_OK ; 
 int IPATH_S_WAIT_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* ib_ipath_state_ops ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_qp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_ibdev*,struct ipath_verbs_txreq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_ibdev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *cookie, int status)
{
	struct ipath_verbs_txreq *tx = cookie;
	struct ipath_qp *qp = tx->qp;
	struct ipath_ibdev *dev = FUNC7(qp->ibqp.device);
	unsigned long flags;
	enum ib_wc_status ibs = status == IPATH_SDMA_TXREQ_S_OK ?
		IB_WC_SUCCESS : IB_WC_WR_FLUSH_ERR;

	if (FUNC0(&qp->s_dma_busy)) {
		FUNC5(&qp->s_lock, flags);
		if (tx->wqe)
			FUNC2(qp, tx->wqe, ibs);
		if ((ib_ipath_state_ops[qp->state] & IPATH_FLUSH_SEND &&
		     qp->s_last != qp->s_head) ||
		    (qp->s_flags & IPATH_S_WAIT_DMA))
			FUNC1(qp);
		FUNC6(&qp->s_lock, flags);
		FUNC8(&qp->wait_dma);
	} else if (tx->wqe) {
		FUNC5(&qp->s_lock, flags);
		FUNC2(qp, tx->wqe, ibs);
		FUNC6(&qp->s_lock, flags);
	}

	if (tx->txreq.flags & IPATH_SDMA_TXREQ_F_FREEBUF)
		FUNC3(tx->txreq.map_addr);
	FUNC4(dev, tx);

	if (FUNC0(&qp->refcount))
		FUNC8(&qp->wait);
}