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
struct TYPE_2__ {int /*<<< orphan*/  fstart; int /*<<< orphan*/  max_delay; } ;
struct drm_i915_private {TYPE_1__ ips; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct drm_i915_private* i915_mch_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(void)
{
	struct drm_i915_private *dev_priv;
	bool ret = true;

	FUNC1(&mchdev_lock);
	if (!i915_mch_dev) {
		ret = false;
		goto out_unlock;
	}
	dev_priv = i915_mch_dev;

	dev_priv->ips.max_delay = dev_priv->ips.fstart;

	if (!FUNC0(dev_priv->dev, dev_priv->ips.fstart))
		ret = false;

out_unlock:
	FUNC2(&mchdev_lock);

	return ret;
}