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
struct TYPE_4__ {int /*<<< orphan*/  mappable_base; } ;
struct drm_i915_private {int num_pipe; TYPE_2__ gtt; } ;
struct TYPE_3__ {int preferred_depth; int prefer_shadow; int max_width; int max_height; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  intel_mode_funcs ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 

void FUNC14(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int i, ret;

	FUNC3(dev);

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;

	dev->mode_config.preferred_depth = 24;
	dev->mode_config.prefer_shadow = 1;

	dev->mode_config.funcs = &intel_mode_funcs;

	FUNC10(dev);

	FUNC9(dev);

	FUNC8(dev);

	if (FUNC1(dev)) {
		dev->mode_config.max_width = 2048;
		dev->mode_config.max_height = 2048;
	} else if (FUNC2(dev)) {
		dev->mode_config.max_width = 4096;
		dev->mode_config.max_height = 4096;
	} else {
		dev->mode_config.max_width = 8192;
		dev->mode_config.max_height = 8192;
	}
	dev->mode_config.fb_base = dev_priv->gtt.mappable_base;

	FUNC0("%d display pipe%s available.\n",
		      dev_priv->num_pipe, dev_priv->num_pipe > 1 ? "s" : "");

	for (i = 0; i < dev_priv->num_pipe; i++) {
		FUNC6(dev, i);
		ret = FUNC12(dev, i);
		if (ret)
			FUNC0("plane %d init failed: %d\n", i, ret);
	}

	FUNC5(dev);
	FUNC11(dev);

	/* Just disable it once at startup */
	FUNC4(dev);
	FUNC13(dev);

	/* Just in case the BIOS is doing something questionable. */
	FUNC7(dev);
}