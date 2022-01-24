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
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  PCI_LBPC ; 
 int FUNC5 (struct drm_device*,int) ; 
 int FUNC6 (struct drm_device*) ; 
 void FUNC7 (struct drm_device*,int) ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev, u32 level)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 tmp;

	FUNC0("set backlight PWM = %d\n", level);
	level = FUNC5(dev, level);

	if (FUNC1(dev))
		return FUNC7(dev, level);

	if (FUNC8(dev)) {
		u32 max = FUNC6(dev);
		u8 lbpc;

		lbpc = level * 0xfe / max + 1;
		level /= lbpc;
		FUNC9(dev->pdev, PCI_LBPC, lbpc);
	}

	tmp = FUNC2(BLC_PWM_CTL);
	if (FUNC4(dev)->gen < 4)
		level <<= 1;
	tmp &= ~BACKLIGHT_DUTY_CYCLE_MASK;
	FUNC3(BLC_PWM_CTL, tmp | level);
}