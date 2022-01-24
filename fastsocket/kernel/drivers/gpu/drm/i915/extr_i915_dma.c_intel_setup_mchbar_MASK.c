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
typedef  int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int mchbar_need_disable; int /*<<< orphan*/  bridge_dev; } ;
typedef  TYPE_1__ drm_i915_private_t ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int DEVEN_MCHBAR_EN ; 
 int DEVEN_REG ; 
 TYPE_2__* FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int MCHBAR_I915 ; 
 int MCHBAR_I965 ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC6(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int mchbar_reg = FUNC0(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
	u32 temp;
	bool enabled;

	dev_priv->mchbar_need_disable = false;

	if (FUNC1(dev) || FUNC2(dev)) {
		FUNC4(dev_priv->bridge_dev, DEVEN_REG, &temp);
		enabled = !!(temp & DEVEN_MCHBAR_EN);
	} else {
		FUNC4(dev_priv->bridge_dev, mchbar_reg, &temp);
		enabled = temp & 1;
	}

	/* If it's already enabled, don't have to do anything */
	if (enabled)
		return;

	if (FUNC3(dev))
		return;

	dev_priv->mchbar_need_disable = true;

	/* Space is allocated or reserved, so enable it. */
	if (FUNC1(dev) || FUNC2(dev)) {
		FUNC5(dev_priv->bridge_dev, DEVEN_REG,
				       temp | DEVEN_MCHBAR_EN);
	} else {
		FUNC4(dev_priv->bridge_dev, mchbar_reg, &temp);
		FUNC5(dev_priv->bridge_dev, mchbar_reg, temp | 1);
	}
}