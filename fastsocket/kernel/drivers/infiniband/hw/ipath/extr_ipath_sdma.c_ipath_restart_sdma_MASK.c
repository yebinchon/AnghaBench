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
struct ipath_devdata {int ipath_flags; int /*<<< orphan*/  verbs_dev; int /*<<< orphan*/  ipath_sendctrl_lock; TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_sendctrl; int /*<<< orphan*/  ipath_sdma_status; int /*<<< orphan*/  ipath_sdma_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINIPATH_S_SDMAENABLE ; 
 int IPATH_HAS_SEND_DMA ; 
 int /*<<< orphan*/  IPATH_SDMA_ABORTING ; 
 int /*<<< orphan*/  IPATH_SDMA_DISABLED ; 
 int /*<<< orphan*/  IPATH_SDMA_DISARMED ; 
 int /*<<< orphan*/  IPATH_SDMA_RUNNING ; 
 int /*<<< orphan*/  IPATH_SDMA_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct ipath_devdata *dd)
{
	unsigned long flags;
	int needed = 1;

	if (!(dd->ipath_flags & IPATH_HAS_SEND_DMA))
		goto bail;

	/*
	 * First, make sure we should, which is to say,
	 * check that we are "RUNNING" (not in teardown)
	 * and not "SHUTDOWN"
	 */
	FUNC5(&dd->ipath_sdma_lock, flags);
	if (!FUNC7(IPATH_SDMA_RUNNING, &dd->ipath_sdma_status)
		|| FUNC7(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
			needed = 0;
	else {
		FUNC0(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
		FUNC0(IPATH_SDMA_DISARMED, &dd->ipath_sdma_status);
		FUNC0(IPATH_SDMA_ABORTING, &dd->ipath_sdma_status);
	}
	FUNC6(&dd->ipath_sdma_lock, flags);
	if (!needed) {
		FUNC1("invalid attempt to restart SDMA, status 0x%08lx\n",
			dd->ipath_sdma_status);
		goto bail;
	}
	FUNC5(&dd->ipath_sendctrl_lock, flags);
	/*
	 * First clear, just to be safe. Enable is only done
	 * in chip on 0->1 transition
	 */
	dd->ipath_sendctrl &= ~INFINIPATH_S_SDMAENABLE;
	FUNC4(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
	FUNC3(dd, dd->ipath_kregs->kr_scratch);
	dd->ipath_sendctrl |= INFINIPATH_S_SDMAENABLE;
	FUNC4(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
	FUNC3(dd, dd->ipath_kregs->kr_scratch);
	FUNC6(&dd->ipath_sendctrl_lock, flags);

	/* notify upper layers */
	FUNC2(dd->verbs_dev);

bail:
	return;
}