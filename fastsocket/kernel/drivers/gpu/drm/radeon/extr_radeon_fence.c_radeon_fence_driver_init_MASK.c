#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  fence_queue; } ;

/* Variables and functions */
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 

int FUNC4(struct radeon_device *rdev)
{
	int ring;

	FUNC1(&rdev->fence_queue);
	for (ring = 0; ring < RADEON_NUM_RINGS; ring++) {
		FUNC3(rdev, ring);
	}
	if (FUNC2(rdev)) {
		FUNC0(rdev->dev, "fence debugfs file creation failed\n");
	}
	return 0;
}