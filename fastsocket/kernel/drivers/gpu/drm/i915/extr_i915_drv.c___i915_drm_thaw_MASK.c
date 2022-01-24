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
struct TYPE_2__ {scalar_t__ suspended; } ;
struct drm_i915_private {int enable_hotplug_processing; int /*<<< orphan*/  modeset_restore_lock; int /*<<< orphan*/  modeset_restore; int /*<<< orphan*/  console_resume_work; TYPE_1__ mm; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  MODESET_DONE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int error = 0;

	FUNC5(dev);
	FUNC12(dev);

	/* KMS EnterVT equivalent */
	if (FUNC2(dev, DRIVER_MODESET)) {
		FUNC8(dev);

		FUNC13(&dev->struct_mutex);
		dev_priv->mm.suspended = 0;

		error = FUNC4(dev);
		FUNC14(&dev->struct_mutex);

		/* We need working interrupts for modeset enabling ... */
		FUNC3(dev);

		FUNC9(dev);
		FUNC10(dev, false);

		/*
		 * ... but also need to make sure that hotplug processing
		 * doesn't cause havoc. Like in the driver load code we don't
		 * bother with the tiny race here where we might loose hotplug
		 * notifications.
		 * */
		FUNC7(dev);
		dev_priv->enable_hotplug_processing = true;
	}

	FUNC11(dev);

	/*
	 * The console lock can be pretty contented on resume due
	 * to all the printk activity.  Try to keep it out of the hot
	 * path of resume if possible.
	 */
	if (FUNC0()) {
		FUNC6(dev, 0);
		FUNC1();
	} else {
		FUNC15(&dev_priv->console_resume_work);
	}

	FUNC13(&dev_priv->modeset_restore_lock);
	dev_priv->modeset_restore = MODESET_DONE;
	FUNC14(&dev_priv->modeset_restore_lock);
	return error;
}