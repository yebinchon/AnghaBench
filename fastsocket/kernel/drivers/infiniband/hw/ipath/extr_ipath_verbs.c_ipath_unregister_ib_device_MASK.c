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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
struct ib_device {int dummy; } ;
struct ipath_ibdev {int /*<<< orphan*/  txreq_bufs; TYPE_1__ lk_table; TYPE_2__ qp_table; int /*<<< orphan*/  dd; int /*<<< orphan*/  rnrwait; int /*<<< orphan*/  piowait; int /*<<< orphan*/ * pending; struct ib_device ibdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ipath_ibdev *dev)
{
	struct ib_device *ibdev = &dev->ibdev;
	u32 qps_inuse;

	FUNC2(ibdev);

	FUNC0(dev->dd);

	if (!FUNC7(&dev->pending[0]) ||
	    !FUNC7(&dev->pending[1]) ||
	    !FUNC7(&dev->pending[2]))
		FUNC3(dev->dd, "pending list not empty!\n");
	if (!FUNC7(&dev->piowait))
		FUNC3(dev->dd, "piowait list not empty!\n");
	if (!FUNC7(&dev->rnrwait))
		FUNC3(dev->dd, "rnrwait list not empty!\n");
	if (!FUNC5())
		FUNC3(dev->dd, "multicast table memory leak!\n");
	/*
	 * Note that ipath_unregister_ib_device() can be called before all
	 * the QPs are destroyed!
	 */
	qps_inuse = FUNC4(&dev->qp_table);
	if (qps_inuse)
		FUNC3(dev->dd, "QP memory leak! %u still in use\n",
			qps_inuse);
	FUNC6(dev->qp_table.table);
	FUNC6(dev->lk_table.table);
	FUNC6(dev->txreq_bufs);
	FUNC1(ibdev);
}