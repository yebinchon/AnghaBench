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
typedef  size_t u16 ;
struct TYPE_4__ {scalar_t__ max_sges; } ;
struct ocrdma_srq {int /*<<< orphan*/  q_lock; TYPE_1__ rq; int /*<<< orphan*/ * rqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int dummy; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ocrdma_srq* FUNC0 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_hdr_wqe*,struct ib_recv_wr*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct ocrdma_hdr_wqe* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_srq*) ; 
 size_t FUNC6 (struct ocrdma_srq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
			 struct ib_recv_wr **bad_wr)
{
	int status = 0;
	unsigned long flags;
	struct ocrdma_srq *srq;
	struct ocrdma_hdr_wqe *rqe;
	u16 tag;

	srq = FUNC0(ibsrq);

	FUNC7(&srq->q_lock, flags);
	while (wr) {
		if (FUNC2(&srq->rq) == 0 ||
		    wr->num_sge > srq->rq.max_sges) {
			status = -ENOMEM;
			*bad_wr = wr;
			break;
		}
		tag = FUNC6(srq);
		rqe = FUNC3(&srq->rq);
		FUNC1(rqe, wr, tag);

		srq->rqe_wr_id_tbl[tag] = wr->wr_id;
		/* make sure rqe is written before adapter can perform DMA */
		FUNC9();
		/* inform hw to start processing it */
		FUNC5(srq);
		/* update pointer, counter for next wr */
		FUNC4(&srq->rq);
		wr = wr->next;
	}
	FUNC8(&srq->q_lock, flags);
	return status;
}