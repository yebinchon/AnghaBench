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
struct TYPE_4__ {int interruptible; } ;
struct TYPE_3__ {int /*<<< orphan*/  do_idle_maps; } ;
struct drm_i915_private {int /*<<< orphan*/  dev; TYPE_2__ mm; TYPE_1__ gtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv)
{
	bool ret = dev_priv->mm.interruptible;

	if (FUNC3(dev_priv->gtt.do_idle_maps)) {
		dev_priv->mm.interruptible = false;
		if (FUNC1(dev_priv->dev)) {
			FUNC0("Couldn't idle GPU\n");
			/* Wait a bit, in hopes it avoids the hang */
			FUNC2(10);
		}
	}

	return ret;
}