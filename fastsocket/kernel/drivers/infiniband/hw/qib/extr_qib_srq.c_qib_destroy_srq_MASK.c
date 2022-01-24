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
struct TYPE_3__ {int /*<<< orphan*/  wq; } ;
struct qib_srq {TYPE_1__ rq; TYPE_2__* ip; } ;
struct qib_ibdev {int /*<<< orphan*/  n_srqs_lock; int /*<<< orphan*/  n_srqs_allocated; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_srq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_release_mmap_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct qib_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qib_srq* FUNC5 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct ib_srq *ibsrq)
{
	struct qib_srq *srq = FUNC5(ibsrq);
	struct qib_ibdev *dev = FUNC4(ibsrq->device);

	FUNC2(&dev->n_srqs_lock);
	dev->n_srqs_allocated--;
	FUNC3(&dev->n_srqs_lock);
	if (srq->ip)
		FUNC1(&srq->ip->ref, qib_release_mmap_info);
	else
		FUNC6(srq->rq.wq);
	FUNC0(srq);

	return 0;
}