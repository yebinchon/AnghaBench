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
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct omap_device {scalar_t__ _state; TYPE_1__ pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OMAP_DEVICE_STATE_ENABLED ; 
 scalar_t__ OMAP_DEVICE_STATE_IDLE ; 
 int /*<<< orphan*/  USE_WAKEUP_LAT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_device* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct omap_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct platform_device *pdev)
{
	int ret;
	struct omap_device *od;

	od = FUNC1(pdev);

	if (od->_state != OMAP_DEVICE_STATE_ENABLED) {
		FUNC0(1, "omap_device: %s.%d: omap_device_idle() called from "
		     "invalid state\n", od->pdev.name, od->pdev.id);
		return -EINVAL;
	}

	ret = FUNC2(od, USE_WAKEUP_LAT);

	od->_state = OMAP_DEVICE_STATE_IDLE;

	return ret;
}