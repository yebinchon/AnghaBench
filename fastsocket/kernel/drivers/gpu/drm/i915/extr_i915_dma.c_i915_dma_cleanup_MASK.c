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
struct drm_device {int /*<<< orphan*/  struct_mutex; scalar_t__ irq_enabled; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ring; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int I915_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_device * dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int i;

	/* Make sure interrupts are disabled here because the uninstall ioctl
	 * may not have been called from userspace and after dev_private
	 * is freed, it's too late.
	 */
	if (dev->irq_enabled)
		FUNC1(dev);

	FUNC4(&dev->struct_mutex);
	for (i = 0; i < I915_NUM_RINGS; i++)
		FUNC3(&dev_priv->ring[i]);
	FUNC5(&dev->struct_mutex);

	/* Clear the HWS virtual address at teardown */
	if (FUNC0(dev))
		FUNC2(dev);

	return 0;
}