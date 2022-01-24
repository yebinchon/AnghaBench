#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ max_sges; size_t head; } ;
struct ocrdma_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_1__ rq; int /*<<< orphan*/ * rqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int dummy; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  wr_id; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ OCRDMA_QPS_ERR ; 
 scalar_t__ OCRDMA_QPS_RST ; 
 struct ocrdma_qp* FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_hdr_wqe*,struct ib_recv_wr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct ocrdma_hdr_wqe* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct ib_qp *ibqp, struct ib_recv_wr *wr,
		     struct ib_recv_wr **bad_wr)
{
	int status = 0;
	unsigned long flags;
	struct ocrdma_qp *qp = FUNC0(ibqp);
	struct ocrdma_hdr_wqe *rqe;

	FUNC6(&qp->q_lock, flags);
	if (qp->state == OCRDMA_QPS_RST || qp->state == OCRDMA_QPS_ERR) {
		FUNC7(&qp->q_lock, flags);
		*bad_wr = wr;
		return -EINVAL;
	}
	while (wr) {
		if (FUNC2(&qp->rq) == 0 ||
		    wr->num_sge > qp->rq.max_sges) {
			*bad_wr = wr;
			status = -ENOMEM;
			break;
		}
		rqe = FUNC3(&qp->rq);
		FUNC1(rqe, wr, 0);

		qp->rqe_wr_id_tbl[qp->rq.head] = wr->wr_id;
		/* make sure rqe is written before adapter can access it */
		FUNC8();

		/* inform hw to start processing it */
		FUNC5(qp);

		/* update pointer, counter for next wr */
		FUNC4(&qp->rq);
		wr = wr->next;
	}
	FUNC7(&qp->q_lock, flags);
	return status;
}