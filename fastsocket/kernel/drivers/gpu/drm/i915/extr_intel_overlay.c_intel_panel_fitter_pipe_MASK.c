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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int PFIT_ENABLE ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32  pfit_control;

	/* i830 doesn't have a panel fitter */
	if (FUNC2(dev))
		return -1;

	pfit_control = FUNC0(PFIT_CONTROL);

	/* See if the panel fitter is in use */
	if ((pfit_control & PFIT_ENABLE) == 0)
		return -1;

	/* 965 can place panel fitter on either pipe */
	if (FUNC1(dev))
		return (pfit_control >> 29) & 0x3;

	/* older chips can only use pipe 1 */
	return 1;
}