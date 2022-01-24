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
typedef  int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct TYPE_4__ {TYPE_2__ mch_res; int /*<<< orphan*/  bridge_dev; scalar_t__ mchbar_need_disable; } ;
typedef  TYPE_1__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;

/* Variables and functions */
 int DEVEN_MCHBAR_EN ; 
 int DEVEN_REG ; 
 TYPE_3__* FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int MCHBAR_I915 ; 
 int MCHBAR_I965 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int mchbar_reg = FUNC0(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
	u32 temp;

	if (dev_priv->mchbar_need_disable) {
		if (FUNC1(dev) || FUNC2(dev)) {
			FUNC3(dev_priv->bridge_dev, DEVEN_REG, &temp);
			temp &= ~DEVEN_MCHBAR_EN;
			FUNC4(dev_priv->bridge_dev, DEVEN_REG, temp);
		} else {
			FUNC3(dev_priv->bridge_dev, mchbar_reg, &temp);
			temp &= ~1;
			FUNC4(dev_priv->bridge_dev, mchbar_reg, temp);
		}
	}

	if (dev_priv->mch_res.start)
		FUNC5(&dev_priv->mch_res);
}