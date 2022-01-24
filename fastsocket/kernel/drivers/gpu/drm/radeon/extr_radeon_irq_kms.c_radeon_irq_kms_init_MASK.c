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
struct TYPE_2__ {int installed; int /*<<< orphan*/  lock; } ;
struct radeon_device {int msi_enabled; TYPE_1__ irq; int /*<<< orphan*/  ddev; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  num_crtc; int /*<<< orphan*/  audio_work; int /*<<< orphan*/  hotplug_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r600_audio_update_hdmi ; 
 int /*<<< orphan*/  radeon_hotplug_work_func ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct radeon_device *rdev)
{
	int r = 0;

	FUNC1(&rdev->hotplug_work, radeon_hotplug_work_func);
	FUNC1(&rdev->audio_work, r600_audio_update_hdmi);

	FUNC7(&rdev->irq.lock);
	r = FUNC4(rdev->ddev, rdev->num_crtc);
	if (r) {
		return r;
	}
	/* enable msi */
	rdev->msi_enabled = 0;

	if (FUNC6(rdev)) {
		int ret = FUNC5(rdev->pdev);
		if (!ret) {
			rdev->msi_enabled = 1;
			FUNC2(rdev->dev, "radeon: using MSI.\n");
		}
	}
	rdev->irq.installed = true;
	r = FUNC3(rdev->ddev);
	if (r) {
		rdev->irq.installed = false;
		return r;
	}
	FUNC0("radeon: irq initialized.\n");
	return 0;
}