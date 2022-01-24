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
typedef  union t3_wr {int dummy; } t3_wr ;
struct t3_wq {unsigned long size_log2; unsigned long rq_size_log2; int /*<<< orphan*/  qpid; int /*<<< orphan*/  rq; int /*<<< orphan*/  rq_addr; int /*<<< orphan*/  sq; int /*<<< orphan*/  queue; } ;
struct cxio_ucontext {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct cxio_rdev {TYPE_2__ rnic_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxio_rdev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC3 (struct t3_wq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxio_rdev*,int /*<<< orphan*/ ,struct cxio_ucontext*) ; 

int FUNC5(struct cxio_rdev *rdev_p, struct t3_wq *wq,
		    struct cxio_ucontext *uctx)
{
	FUNC1(&(rdev_p->rnic_info.pdev->dev),
			  (1UL << (wq->size_log2))
			  * sizeof(union t3_wr), wq->queue,
			  FUNC3(wq, mapping));
	FUNC2(wq->sq);
	FUNC0(rdev_p, wq->rq_addr, (1UL << wq->rq_size_log2));
	FUNC2(wq->rq);
	FUNC4(rdev_p, wq->qpid, uctx);
	return 0;
}