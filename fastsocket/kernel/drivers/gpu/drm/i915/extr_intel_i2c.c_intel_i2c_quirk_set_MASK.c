#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv, bool enable)
{
	u32 val;

	/* When using bit bashing for I2C, this bit needs to be set to 1 */
	if (!FUNC2(dev_priv->dev))
		return;

	val = FUNC0(DSPCLK_GATE_D);
	if (enable)
		val |= DPCUNIT_CLOCK_GATE_DISABLE;
	else
		val &= ~DPCUNIT_CLOCK_GATE_DISABLE;
	FUNC1(DSPCLK_GATE_D, val);
}