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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  counter; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct qib_pportdata {TYPE_2__ cong_stats; TYPE_1__ ibport_data; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_SAMPLE ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  QIB_CONG_TIMER_PSINTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*) ; 
 struct qib_devdata* FUNC1 (struct qib_pportdata*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*) ; 

__attribute__((used)) static void FUNC8(unsigned long opaque)
{
	struct qib_pportdata *ppd = (struct qib_pportdata *)opaque;
	struct qib_devdata *dd = FUNC1(ppd);
	unsigned long flags;
	u8 status;

	FUNC3(&ppd->ibport_data.lock, flags);
	if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_SAMPLE) {
		status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
		if (status == IB_PMA_SAMPLE_STATUS_DONE) {
			/* save counter cache */
			FUNC0(ppd);
			ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
		} else
			goto done;
	}
	ppd->cong_stats.counter = FUNC7(ppd);
	dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL, 0x0);
done:
	FUNC4(&ppd->ibport_data.lock, flags);
	FUNC2(&ppd->cong_stats.timer, jiffies + HZ);
}