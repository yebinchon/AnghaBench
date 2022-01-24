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
typedef  int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int LCPLL_CD_SOURCE_FCLK ; 
 int /*<<< orphan*/  LCPLL_CTL ; 
 int LCPLL_PLL_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

void FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t val = FUNC2(LCPLL_CTL);

	/* The LCPLL register should be turned on by the BIOS. For now let's
	 * just check its state and print errors in case something is wrong.
	 * Don't even try to turn it on.
	 */

	FUNC0("CDCLK running at %dMHz\n",
		      FUNC3(dev_priv));

	if (val & LCPLL_CD_SOURCE_FCLK)
		FUNC1("CDCLK source is not LCPLL\n");

	if (val & LCPLL_PLL_DISABLE)
		FUNC1("LCPLL is disabled\n");
}