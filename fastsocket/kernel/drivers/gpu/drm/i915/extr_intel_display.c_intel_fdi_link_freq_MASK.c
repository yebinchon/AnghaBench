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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDI_PLL_BIOS_0 ; 
 int FDI_PLL_FB_CLOCK_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 

__attribute__((used)) static inline u32 /* units of 100MHz */
FUNC2(struct drm_device *dev)
{
	if (FUNC1(dev)) {
		struct drm_i915_private *dev_priv = dev->dev_private;
		return (FUNC0(FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK) + 2;
	} else
		return 27;
}