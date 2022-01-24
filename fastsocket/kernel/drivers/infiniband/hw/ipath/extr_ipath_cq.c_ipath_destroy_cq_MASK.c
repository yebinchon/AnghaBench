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
struct ipath_ibdev {int /*<<< orphan*/  n_cqs_lock; int /*<<< orphan*/  n_cqs_allocated; } ;
struct ipath_cq {int /*<<< orphan*/  queue; TYPE_1__* ip; int /*<<< orphan*/  comptask; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ipath_release_mmap_info ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ipath_cq* FUNC5 (struct ib_cq*) ; 
 struct ipath_ibdev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_cq *ibcq)
{
	struct ipath_ibdev *dev = FUNC6(ibcq->device);
	struct ipath_cq *cq = FUNC5(ibcq);

	FUNC4(&cq->comptask);
	FUNC2(&dev->n_cqs_lock);
	dev->n_cqs_allocated--;
	FUNC3(&dev->n_cqs_lock);
	if (cq->ip)
		FUNC1(&cq->ip->ref, ipath_release_mmap_info);
	else
		FUNC7(cq->queue);
	FUNC0(cq);

	return 0;
}