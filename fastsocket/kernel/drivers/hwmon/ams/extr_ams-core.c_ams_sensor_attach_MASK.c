#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int vflag; int (* get_vendor ) () ;TYPE_1__* of_dev; int /*<<< orphan*/  of_node; scalar_t__ worker_irqs; int /*<<< orphan*/  orient2; int /*<<< orphan*/  orient1; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ams_freefall_client ; 
 TYPE_3__ ams_info ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  ams_shock_client ; 
 int /*<<< orphan*/  dev_attr_current ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 

int FUNC9(void)
{
	int result;
	const u32 *prop;

	/* Get orientation */
	prop = FUNC4(ams_info.of_node, "orientation", NULL);
	if (!prop)
		return -ENODEV;
	ams_info.orient1 = *prop;
	ams_info.orient2 = *(prop + 1);

	/* Register freefall interrupt handler */
	result = FUNC6(ams_info.of_node,
			"accel-int-1",
			&ams_freefall_client);
	if (result < 0)
		return -ENODEV;

	/* Reset saved irqs */
	ams_info.worker_irqs = 0;

	/* Register shock interrupt handler */
	result = FUNC6(ams_info.of_node,
			"accel-int-2",
			&ams_shock_client);
	if (result < 0)
		goto release_freefall;

	/* Create device */
	ams_info.of_dev = FUNC5(ams_info.of_node, "ams", NULL);
	if (!ams_info.of_dev) {
		result = -ENODEV;
		goto release_shock;
	}

	/* Create attributes */
	result = FUNC1(&ams_info.of_dev->dev, &dev_attr_current);
	if (result)
		goto release_of;

	ams_info.vflag = !!(ams_info.get_vendor() & 0x10);

	/* Init input device */
	result = FUNC0();
	if (result)
		goto release_device_file;

	return result;
release_device_file:
	FUNC2(&ams_info.of_dev->dev, &dev_attr_current);
release_of:
	FUNC3(ams_info.of_dev);
release_shock:
	FUNC7(&ams_shock_client);
release_freefall:
	FUNC7(&ams_freefall_client);
	return result;
}