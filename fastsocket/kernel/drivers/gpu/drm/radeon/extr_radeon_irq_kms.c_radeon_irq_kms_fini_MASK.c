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
struct TYPE_2__ {int installed; } ;
struct radeon_device {int /*<<< orphan*/  hotplug_work; int /*<<< orphan*/  pdev; scalar_t__ msi_enabled; TYPE_1__ irq; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev)
{
	FUNC1(rdev->ddev);
	if (rdev->irq.installed) {
		FUNC0(rdev->ddev);
		rdev->irq.installed = false;
		if (rdev->msi_enabled)
			FUNC3(rdev->pdev);
	}
	FUNC2(&rdev->hotplug_work);
}