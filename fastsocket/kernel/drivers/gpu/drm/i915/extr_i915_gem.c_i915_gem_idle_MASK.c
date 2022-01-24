#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_3__* dev_private; } ;
struct TYPE_5__ {int suspended; int /*<<< orphan*/  retire_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  hangcheck_timer; } ;
struct TYPE_6__ {TYPE_2__ mm; TYPE_1__ gpu_error; } ;
typedef  TYPE_3__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int ret;

	FUNC9(&dev->struct_mutex);

	if (dev_priv->mm.suspended) {
		FUNC10(&dev->struct_mutex);
		return 0;
	}

	ret = FUNC7(dev);
	if (ret) {
		FUNC10(&dev->struct_mutex);
		return ret;
	}
	FUNC6(dev);

	/* Under UMS, be paranoid and evict. */
	if (!FUNC2(dev, DRIVER_MODESET))
		FUNC4(dev);

	FUNC5(dev);

	/* Hack!  Don't let anybody do execbuf while we don't control the chip.
	 * We need to replace this with a semaphore, or something.
	 * And not confound mm.suspended!
	 */
	dev_priv->mm.suspended = 1;
	FUNC1(&dev_priv->gpu_error.hangcheck_timer);

	FUNC8(dev);
	FUNC3(dev);

	FUNC10(&dev->struct_mutex);

	/* Cancel the retire work handler, which should be idle now. */
	FUNC0(&dev_priv->mm.retire_work);

	return 0;
}