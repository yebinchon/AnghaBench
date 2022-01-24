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
struct radeon_device {int dummy; } ;
struct drm_device {TYPE_1__* pdev; void* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long RADEON_IS_AGP ; 
 unsigned long RADEON_IS_PCI ; 
 unsigned long RADEON_IS_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 struct radeon_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,struct drm_device*,TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct radeon_device*) ; 

int FUNC9(struct drm_device *dev, unsigned long flags)
{
	struct radeon_device *rdev;
	int r, acpi_status;

	rdev = FUNC3(sizeof(struct radeon_device), GFP_KERNEL);
	if (rdev == NULL) {
		return -ENOMEM;
	}
	dev->dev_private = (void *)rdev;

	/* update BUS flag */
	if (FUNC2(dev)) {
		flags |= RADEON_IS_AGP;
	} else if (FUNC4(dev->pdev)) {
		flags |= RADEON_IS_PCIE;
	} else {
		flags |= RADEON_IS_PCI;
	}

	/* radeon_device_init should report only fatal error
	 * like memory allocation failure or iomapping failure,
	 * or memory manager initialization failure, it must
	 * properly initialize the GPU MC controller and permit
	 * VRAM allocation
	 */
	r = FUNC6(rdev, dev, dev->pdev, flags);
	if (r) {
		FUNC1(&dev->pdev->dev, "Fatal error during GPU init\n");
		goto out;
	}

	/* Again modeset_init should fail only on fatal error
	 * otherwise it should provide enough functionalities
	 * for shadowfb to run
	 */
	r = FUNC8(rdev);
	if (r)
		FUNC1(&dev->pdev->dev, "Fatal error during modeset init\n");

	/* Call ACPI methods: require modeset init
	 * but failure is not fatal
	 */
	if (!r) {
		acpi_status = FUNC5(rdev);
		if (acpi_status)
		FUNC0(&dev->pdev->dev,
				"Error during ACPI methods call\n");
	}

out:
	if (r)
		FUNC7(dev);
	return r;
}