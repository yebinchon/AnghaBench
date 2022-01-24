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
struct platform_device {int dummy; } ;
struct omap_hwmod {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct omap_device {scalar_t__ _state; int hwmods_cnt; struct omap_hwmod** hwmods; TYPE_1__ pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IGNORE_WAKEUP_LAT ; 
 scalar_t__ OMAP_DEVICE_STATE_ENABLED ; 
 scalar_t__ OMAP_DEVICE_STATE_IDLE ; 
 scalar_t__ OMAP_DEVICE_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_device* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct omap_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hwmod*) ; 

int FUNC4(struct platform_device *pdev)
{
	int ret, i;
	struct omap_device *od;
	struct omap_hwmod *oh;

	od = FUNC1(pdev);

	if (od->_state != OMAP_DEVICE_STATE_ENABLED &&
	    od->_state != OMAP_DEVICE_STATE_IDLE) {
		FUNC0(1, "omap_device: %s.%d: omap_device_shutdown() called "
		     "from invalid state\n", od->pdev.name, od->pdev.id);
		return -EINVAL;
	}

	ret = FUNC2(od, IGNORE_WAKEUP_LAT);

	for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++)
		FUNC3(oh);

	od->_state = OMAP_DEVICE_STATE_SHUTDOWN;

	return ret;
}