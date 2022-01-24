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
struct t3_cqe {int dummy; } ;
struct t3_cq {unsigned long size_log2; int /*<<< orphan*/  cqid; int /*<<< orphan*/  queue; int /*<<< orphan*/  sw_queue; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct cxio_rdev {int /*<<< orphan*/  rscp; TYPE_2__ rnic_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct cxio_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC4 (struct t3_cq*,int /*<<< orphan*/ ) ; 

int FUNC5(struct cxio_rdev *rdev_p, struct t3_cq *cq)
{
	int err;
	err = FUNC0(rdev_p, cq->cqid);
	FUNC3(cq->sw_queue);
	FUNC2(&(rdev_p->rnic_info.pdev->dev),
			  (1UL << (cq->size_log2))
			  * sizeof(struct t3_cqe), cq->queue,
			  FUNC4(cq, mapping));
	FUNC1(rdev_p->rscp, cq->cqid);
	return err;
}