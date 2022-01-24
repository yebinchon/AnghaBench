#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ switch_power_state; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev_private; } ;
struct TYPE_3__ {scalar_t__ event; } ;
typedef  TYPE_1__ pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ PM_EVENT_PRETHAW ; 
 scalar_t__ PM_EVENT_SUSPEND ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, pm_message_t state)
{
	int error;

	if (!dev || !dev->dev_private) {
		FUNC0("dev: %p\n", dev);
		FUNC0("DRM not initialized, aborting suspend.\n");
		return -ENODEV;
	}

	if (state.event == PM_EVENT_PRETHAW)
		return 0;


	if (dev->switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	error = FUNC1(dev);
	if (error)
		return error;

	if (state.event == PM_EVENT_SUSPEND) {
		/* Shut down the device */
		FUNC2(dev->pdev);
		FUNC3(dev->pdev, PCI_D3hot);
	}

	return 0;
}