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
struct radeon_device {int /*<<< orphan*/ * rmmio; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

int FUNC4(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;

	if (rdev == NULL)
		return 0;
	if (rdev->rmmio == NULL)
		goto done_free;
	FUNC1(rdev);
	FUNC3(rdev);
	FUNC2(rdev);

done_free:
	FUNC0(rdev);
	dev->dev_private = NULL;
	return 0;
}