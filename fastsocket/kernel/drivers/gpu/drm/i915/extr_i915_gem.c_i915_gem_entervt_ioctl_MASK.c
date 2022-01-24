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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_4__ {int suspended; int /*<<< orphan*/  active_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  reset_counter; } ;
struct TYPE_5__ {TYPE_1__ mm; TYPE_3__ gpu_error; } ;
typedef  TYPE_2__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int ret;

	if (FUNC3(dev, DRIVER_MODESET))
		return 0;

	if (FUNC7(&dev_priv->gpu_error)) {
		FUNC1("Reenabling wedged hardware, good luck\n");
		FUNC2(&dev_priv->gpu_error.reset_counter, 0);
	}

	FUNC9(&dev->struct_mutex);
	dev_priv->mm.suspended = 0;

	ret = FUNC6(dev);
	if (ret != 0) {
		FUNC10(&dev->struct_mutex);
		return ret;
	}

	FUNC0(!FUNC8(&dev_priv->mm.active_list));
	FUNC10(&dev->struct_mutex);

	ret = FUNC4(dev);
	if (ret)
		goto cleanup_ringbuffer;

	return 0;

cleanup_ringbuffer:
	FUNC9(&dev->struct_mutex);
	FUNC5(dev);
	dev_priv->mm.suspended = 1;
	FUNC10(&dev->struct_mutex);

	return ret;
}