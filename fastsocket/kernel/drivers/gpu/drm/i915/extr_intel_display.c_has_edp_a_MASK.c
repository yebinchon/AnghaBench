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
 int /*<<< orphan*/  DP_A ; 
 int DP_DETECTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILK_DISPLAY_CHICKEN_FUSES ; 
 int ILK_eDP_A_DISABLE ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (!FUNC2(dev))
		return false;

	if ((FUNC0(DP_A) & DP_DETECTED) == 0)
		return false;

	if (FUNC1(dev) &&
	    (FUNC0(ILK_DISPLAY_CHICKEN_FUSES) & ILK_eDP_A_DISABLE))
		return false;

	return true;
}