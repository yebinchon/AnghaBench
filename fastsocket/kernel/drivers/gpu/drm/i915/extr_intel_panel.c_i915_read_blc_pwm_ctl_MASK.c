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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ saveBLC_PWM_CTL2; scalar_t__ saveBLC_PWM_CTL; } ;
struct drm_i915_private {TYPE_1__ regfile; int /*<<< orphan*/  dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL2 ; 
 int /*<<< orphan*/  BLC_PWM_PCH_CTL2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC3 (struct drm_device*) ; 

__attribute__((used)) static u32 FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 val;

	/* Restore the CTL value if it lost, e.g. GPU reset */

	if (FUNC0(dev_priv->dev)) {
		val = FUNC1(BLC_PWM_PCH_CTL2);
		if (dev_priv->regfile.saveBLC_PWM_CTL2 == 0) {
			dev_priv->regfile.saveBLC_PWM_CTL2 = val;
		} else if (val == 0) {
			val = dev_priv->regfile.saveBLC_PWM_CTL2;
			FUNC2(BLC_PWM_PCH_CTL2, val);
		}
	} else {
		val = FUNC1(BLC_PWM_CTL);
		if (dev_priv->regfile.saveBLC_PWM_CTL == 0) {
			dev_priv->regfile.saveBLC_PWM_CTL = val;
			if (FUNC3(dev)->gen >= 4)
				dev_priv->regfile.saveBLC_PWM_CTL2 =
					FUNC1(BLC_PWM_CTL2);
		} else if (val == 0) {
			val = dev_priv->regfile.saveBLC_PWM_CTL;
			FUNC2(BLC_PWM_CTL, val);
			if (FUNC3(dev)->gen >= 4)
				FUNC2(BLC_PWM_CTL2,
					   dev_priv->regfile.saveBLC_PWM_CTL2);
		}
	}

	return val;
}