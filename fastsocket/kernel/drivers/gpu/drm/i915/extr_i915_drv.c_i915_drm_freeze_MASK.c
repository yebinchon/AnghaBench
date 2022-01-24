#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  delayed_resume_work; } ;
struct drm_i915_private {int enable_hotplug_processing; TYPE_1__ rps; int /*<<< orphan*/  modeset_restore_lock; int /*<<< orphan*/  modeset_restore; } ;
struct drm_device {TYPE_2__* pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  MODESET_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* ignore lid events during suspend */
	FUNC13(&dev_priv->modeset_restore_lock);
	dev_priv->modeset_restore = MODESET_SUSPENDED;
	FUNC14(&dev_priv->modeset_restore_lock);

	FUNC12(dev, true);

	FUNC6(dev);

	FUNC15(dev->pdev);

	/* If KMS is active, we do the leavevt stuff here */
	if (FUNC4(dev, DRIVER_MODESET)) {
		int error = FUNC7(dev);
		if (error) {
			FUNC3(&dev->pdev->dev,
				"GEM idle failed, resume might fail\n");
			return error;
		}

		FUNC0(&dev_priv->rps.delayed_resume_work);

		FUNC10(dev);

		FUNC5(dev);
		dev_priv->enable_hotplug_processing = false;
	}

	FUNC8(dev);

	FUNC11(dev);

	FUNC1();
	FUNC9(dev, 1);
	FUNC2();

	return 0;
}