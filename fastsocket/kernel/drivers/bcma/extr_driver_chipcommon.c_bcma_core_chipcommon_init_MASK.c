#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bcma_drv_cc {int setup_done; int capabilities; int /*<<< orphan*/  ticks_per_ms; TYPE_3__* core; } ;
struct TYPE_6__ {int leddc_on_time; int leddc_off_time; } ;
struct TYPE_8__ {TYPE_2__ sprom; } ;
struct TYPE_5__ {int rev; } ;
struct TYPE_7__ {TYPE_4__* bus; TYPE_1__ id; } ;

/* Variables and functions */
 int BCMA_CC_CAP_PCTL ; 
 int BCMA_CC_CAP_PMU ; 
 int /*<<< orphan*/  BCMA_CC_GPIOPULLDOWN ; 
 int /*<<< orphan*/  BCMA_CC_GPIOPULLUP ; 
 int /*<<< orphan*/  BCMA_CC_GPIOTIMER ; 
 int BCMA_CC_GPIOTIMER_OFFTIME_SHIFT ; 
 int BCMA_CC_GPIOTIMER_ONTIME_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_drv_cc*) ; 

void FUNC5(struct bcma_drv_cc *cc)
{
	u32 leddc_on = 10;
	u32 leddc_off = 90;

	if (cc->setup_done)
		return;

	FUNC2(cc);

	if (cc->core->id.rev >= 20) {
		FUNC0(cc, BCMA_CC_GPIOPULLUP, 0);
		FUNC0(cc, BCMA_CC_GPIOPULLDOWN, 0);
	}

	if (cc->capabilities & BCMA_CC_CAP_PMU)
		FUNC4(cc);
	if (cc->capabilities & BCMA_CC_CAP_PCTL)
		FUNC3(cc->core->bus, "Power control not implemented!\n");

	if (cc->core->id.rev >= 16) {
		if (cc->core->bus->sprom.leddc_on_time &&
		    cc->core->bus->sprom.leddc_off_time) {
			leddc_on = cc->core->bus->sprom.leddc_on_time;
			leddc_off = cc->core->bus->sprom.leddc_off_time;
		}
		FUNC0(cc, BCMA_CC_GPIOTIMER,
			((leddc_on << BCMA_CC_GPIOTIMER_ONTIME_SHIFT) |
			 (leddc_off << BCMA_CC_GPIOTIMER_OFFTIME_SHIFT)));
	}
	cc->ticks_per_ms = FUNC1(cc);

	cc->setup_done = true;
}