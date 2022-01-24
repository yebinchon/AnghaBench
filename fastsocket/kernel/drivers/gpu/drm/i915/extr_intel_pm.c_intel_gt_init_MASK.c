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
struct TYPE_4__ {int /*<<< orphan*/  delayed_resume_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  force_wake_put; int /*<<< orphan*/  force_wake_get; } ;
struct drm_i915_private {TYPE_2__ rps; TYPE_1__ gt; int /*<<< orphan*/  gt_lock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  __gen6_gt_force_wake_get ; 
 int /*<<< orphan*/  __gen6_gt_force_wake_mt_get ; 
 int /*<<< orphan*/  __gen6_gt_force_wake_mt_put ; 
 int /*<<< orphan*/  __gen6_gt_force_wake_put ; 
 int /*<<< orphan*/  intel_gen6_powersave_work ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlv_force_wake_get ; 
 int /*<<< orphan*/  vlv_force_wake_put ; 

void FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC6(&dev_priv->gt_lock);

	FUNC5(dev);

	if (FUNC4(dev)) {
		dev_priv->gt.force_wake_get = vlv_force_wake_get;
		dev_priv->gt.force_wake_put = vlv_force_wake_put;
	} else if (FUNC3(dev) || FUNC2(dev)) {
		dev_priv->gt.force_wake_get = __gen6_gt_force_wake_mt_get;
		dev_priv->gt.force_wake_put = __gen6_gt_force_wake_mt_put;
	} else if (FUNC1(dev)) {
		dev_priv->gt.force_wake_get = __gen6_gt_force_wake_get;
		dev_priv->gt.force_wake_put = __gen6_gt_force_wake_put;
	}
	FUNC0(&dev_priv->rps.delayed_resume_work,
			  intel_gen6_powersave_work);
}