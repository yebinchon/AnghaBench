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
struct TYPE_3__ {int mappable_end; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_i915_gem_init {int gtt_start; int gtt_end; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int EINVAL ; 
 int ENODEV ; 
 TYPE_2__* FUNC0 (struct drm_device*) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct drm_device *dev, void *data,
		    struct drm_file *file)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_i915_gem_init *args = data;

	if (FUNC1(dev, DRIVER_MODESET))
		return -ENODEV;

	if (args->gtt_start >= args->gtt_end ||
	    (args->gtt_end | args->gtt_start) & (PAGE_SIZE - 1))
		return -EINVAL;

	/* GEM with user mode setting was never supported on ilk and later. */
	if (FUNC0(dev)->gen >= 5)
		return -ENODEV;

	FUNC3(&dev->struct_mutex);
	FUNC2(dev, args->gtt_start, args->gtt_end,
				  args->gtt_end);
	dev_priv->gtt.mappable_end = args->gtt_end;
	FUNC4(&dev->struct_mutex);

	return 0;
}