#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {unsigned int max_sge; scalar_t__ size; int /*<<< orphan*/  lock; struct ipath_rwq* wq; } ;
struct ipath_srq {TYPE_1__ rq; } ;
struct ipath_rwqe {int num_sge; int /*<<< orphan*/ * sg_list; int /*<<< orphan*/  wr_id; } ;
struct ipath_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/ * sg_list; int /*<<< orphan*/  wr_id; struct ib_recv_wr* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ipath_rwqe* FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_srq* FUNC4 (struct ib_srq*) ; 

int FUNC5(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
			   struct ib_recv_wr **bad_wr)
{
	struct ipath_srq *srq = FUNC4(ibsrq);
	struct ipath_rwq *wq;
	unsigned long flags;
	int ret;

	for (; wr; wr = wr->next) {
		struct ipath_rwqe *wqe;
		u32 next;
		int i;

		if ((unsigned) wr->num_sge > srq->rq.max_sge) {
			*bad_wr = wr;
			ret = -EINVAL;
			goto bail;
		}

		FUNC2(&srq->rq.lock, flags);
		wq = srq->rq.wq;
		next = wq->head + 1;
		if (next >= srq->rq.size)
			next = 0;
		if (next == wq->tail) {
			FUNC3(&srq->rq.lock, flags);
			*bad_wr = wr;
			ret = -ENOMEM;
			goto bail;
		}

		wqe = FUNC0(&srq->rq, wq->head);
		wqe->wr_id = wr->wr_id;
		wqe->num_sge = wr->num_sge;
		for (i = 0; i < wr->num_sge; i++)
			wqe->sg_list[i] = wr->sg_list[i];
		/* Make sure queue entry is written before the head index. */
		FUNC1();
		wq->head = next;
		FUNC3(&srq->rq.lock, flags);
	}
	ret = 0;

bail:
	return ret;
}