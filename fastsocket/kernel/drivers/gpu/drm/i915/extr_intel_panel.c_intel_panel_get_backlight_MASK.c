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
typedef  int u8 ;
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int /*<<< orphan*/  pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK ; 
 int /*<<< orphan*/  BLC_PWM_CPU_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  PCI_LBPC ; 
 int FUNC4 (struct drm_device*,int) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u32 FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 val;

	if (FUNC1(dev)) {
		val = FUNC2(BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
	} else {
		val = FUNC2(BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
		if (FUNC3(dev)->gen < 4)
			val >>= 1;

		if (FUNC5(dev)) {
			u8 lbpc;

			FUNC6(dev->pdev, PCI_LBPC, &lbpc);
			val *= lbpc;
		}
	}

	val = FUNC4(dev, val);
	FUNC0("get backlight PWM = %d\n", val);
	return val;
}