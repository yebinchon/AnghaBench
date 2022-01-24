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
struct qib_ibdev {int /*<<< orphan*/  n_cqs_lock; int /*<<< orphan*/  n_cqs_allocated; } ;
struct qib_cq {int /*<<< orphan*/  queue; TYPE_1__* ip; int /*<<< orphan*/  comptask; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_release_mmap_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct qib_cq* FUNC5 (struct ib_cq*) ; 
 struct qib_ibdev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_cq *ibcq)
{
	struct qib_ibdev *dev = FUNC6(ibcq->device);
	struct qib_cq *cq = FUNC5(ibcq);

	FUNC0(&cq->comptask);
	FUNC3(&dev->n_cqs_lock);
	dev->n_cqs_allocated--;
	FUNC4(&dev->n_cqs_lock);
	if (cq->ip)
		FUNC2(&cq->ip->ref, qib_release_mmap_info);
	else
		FUNC7(cq->queue);
	FUNC1(cq);

	return 0;
}