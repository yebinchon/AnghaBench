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
struct qib_pportdata {int /*<<< orphan*/  led_override; int /*<<< orphan*/  led_override_timer_active; int /*<<< orphan*/  led_override_timer; } ;
struct qib_devdata {int flags; int first_user_ctxt; int cfgctxts; int num_pports; int (* f_reset ) (struct qib_devdata*) ;int /*<<< orphan*/  pcidev; int /*<<< orphan*/  (* f_setextled ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;struct qib_pportdata* pport; int /*<<< orphan*/  uctxt_lock; TYPE_1__** rcd; int /*<<< orphan*/  kregbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  LED_OVER_BOTH_OFF ; 
 int QIB_HAS_SEND_DMA ; 
 int QIB_PRESENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct qib_devdata*,int) ; 
 struct qib_devdata* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct qib_devdata*) ; 

int FUNC12(int unit)
{
	int ret, i;
	struct qib_devdata *dd = FUNC6(unit);
	struct qib_pportdata *ppd;
	unsigned long flags;
	int pidx;

	if (!dd) {
		ret = -ENODEV;
		goto bail;
	}

	FUNC4(dd->pcidev, "Reset on unit %u requested\n", unit);

	if (!dd->kregbase || !(dd->flags & QIB_PRESENT)) {
		FUNC4(dd->pcidev,
			"Invalid unit number %u or not initialized or not present\n",
			unit);
		ret = -ENXIO;
		goto bail;
	}

	FUNC8(&dd->uctxt_lock, flags);
	if (dd->rcd)
		for (i = dd->first_user_ctxt; i < dd->cfgctxts; i++) {
			if (!dd->rcd[i] || !dd->rcd[i]->cnt)
				continue;
			FUNC9(&dd->uctxt_lock, flags);
			ret = -EBUSY;
			goto bail;
		}
	FUNC9(&dd->uctxt_lock, flags);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		if (FUNC0(&ppd->led_override_timer_active)) {
			/* Need to stop LED timer, _then_ shut off LEDs */
			FUNC2(&ppd->led_override_timer);
			FUNC1(&ppd->led_override_timer_active, 0);
		}

		/* Shut off LEDs after we are sure timer is not running */
		ppd->led_override = LED_OVER_BOTH_OFF;
		dd->f_setextled(ppd, 0);
		if (dd->flags & QIB_HAS_SEND_DMA)
			FUNC7(ppd);
	}

	ret = dd->f_reset(dd);
	if (ret == 1)
		ret = FUNC5(dd, 1);
	else
		ret = -EAGAIN;
	if (ret)
		FUNC3(dd,
			"Reinitialize unit %u after reset failed with %d\n",
			unit, ret);
	else
		FUNC4(dd->pcidev,
			"Reinitialized unit %u after resetting\n",
			unit);

bail:
	return ret;
}