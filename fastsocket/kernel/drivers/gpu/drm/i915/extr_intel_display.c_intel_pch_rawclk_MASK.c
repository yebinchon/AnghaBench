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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_RAWCLK_FREQ ; 
 int RAWCLK_FREQ_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC2(!FUNC0(dev));

	return FUNC1(PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK;
}