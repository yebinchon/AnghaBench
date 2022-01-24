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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWRCTXA ; 
 int RCX_SW_EXIT ; 
 int /*<<< orphan*/  RSTDBYCTL ; 
 int RSX_STATUS_MASK ; 
 int RSX_STATUS_ON ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (FUNC0(PWRCTXA)) {
		/* Wake the GPU, prevent RC6, then restore RSTDBYCTL */
		FUNC1(RSTDBYCTL, FUNC0(RSTDBYCTL) | RCX_SW_EXIT);
		FUNC3(((FUNC0(RSTDBYCTL) & RSX_STATUS_MASK) == RSX_STATUS_ON),
			 50);

		FUNC1(PWRCTXA, 0);
		FUNC2(PWRCTXA);

		FUNC1(RSTDBYCTL, FUNC0(RSTDBYCTL) & ~RCX_SW_EXIT);
		FUNC2(RSTDBYCTL);
	}
}