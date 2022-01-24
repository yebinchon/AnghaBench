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
struct TYPE_2__ {scalar_t__ data; } ;
struct qib_pportdata {TYPE_1__ symerr_clear_timer; int /*<<< orphan*/  led_override_timer_active; TYPE_1__ led_override_timer; TYPE_1__ hol_timer; } ;
struct qib_devdata {int num_pports; struct qib_pportdata* pport; TYPE_1__ intrchk_timer; TYPE_1__ stats_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct qib_devdata *dd)
{
	struct qib_pportdata *ppd;
	int pidx;

	if (dd->stats_timer.data) {
		FUNC1(&dd->stats_timer);
		dd->stats_timer.data = 0;
	}
	if (dd->intrchk_timer.data) {
		FUNC1(&dd->intrchk_timer);
		dd->intrchk_timer.data = 0;
	}
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		if (ppd->hol_timer.data)
			FUNC1(&ppd->hol_timer);
		if (ppd->led_override_timer.data) {
			FUNC1(&ppd->led_override_timer);
			FUNC0(&ppd->led_override_timer_active, 0);
		}
		if (ppd->symerr_clear_timer.data)
			FUNC1(&ppd->symerr_clear_timer);
	}
}