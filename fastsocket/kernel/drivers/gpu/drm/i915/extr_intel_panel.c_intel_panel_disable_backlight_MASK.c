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
typedef  int uint32_t ;
struct drm_i915_private {int backlight_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int BLC_PWM_CPU_CTL2 ; 
 int BLC_PWM_CTL2 ; 
 int BLC_PWM_PCH_CTL1 ; 
 int BLM_PCH_PWM_ENABLE ; 
 int BLM_PWM_ENABLE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	dev_priv->backlight_enabled = false;
	FUNC4(dev, 0);

	if (FUNC3(dev)->gen >= 4) {
		uint32_t reg, tmp;

		reg = FUNC0(dev) ? BLC_PWM_CPU_CTL2 : BLC_PWM_CTL2;

		FUNC2(reg, FUNC1(reg) & ~BLM_PWM_ENABLE);

		if (FUNC0(dev)) {
			tmp = FUNC1(BLC_PWM_PCH_CTL1);
			tmp &= ~BLM_PCH_PWM_ENABLE;
			FUNC2(BLC_PWM_PCH_CTL1, tmp);
		}
	}
}