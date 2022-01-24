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
struct drm_i915_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HSW_CDCLK_LIMIT ; 
 int /*<<< orphan*/  HSW_FUSE_STRAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int LCPLL_CLK_FREQ_450 ; 
 int LCPLL_CLK_FREQ_MASK ; 
 int /*<<< orphan*/  LCPLL_CTL ; 

int FUNC2(struct drm_i915_private *dev_priv)
{
	if (FUNC0(HSW_FUSE_STRAP) & HSW_CDCLK_LIMIT)
		return 450;
	else if ((FUNC0(LCPLL_CTL) & LCPLL_CLK_FREQ_MASK) ==
		 LCPLL_CLK_FREQ_450)
		return 450;
	else if (FUNC1(dev_priv->dev))
		return 338;
	else
		return 540;
}