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
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (struct drm_device const*) ; 
 int INTEL_RC6_ENABLE ; 
 int INTEL_RC6p_ENABLE ; 
 scalar_t__ FUNC2 (struct drm_device const*) ; 
 scalar_t__ i915_enable_rc6 ; 

int FUNC3(const struct drm_device *dev)
{
	/* Respect the kernel parameter if it is set */
	if (i915_enable_rc6 >= 0)
		return i915_enable_rc6;

	/* Disable RC6 on Ironlake */
	if (FUNC1(dev)->gen == 5)
		return 0;

	if (FUNC2(dev)) {
		FUNC0("Haswell: only RC6 available\n");
		return INTEL_RC6_ENABLE;
	}

	/* snb/ivb have more than one rc6 state. */
	if (FUNC1(dev)->gen == 6) {
		FUNC0("Sandybridge: deep RC6 disabled\n");
		return INTEL_RC6_ENABLE;
	}

	FUNC0("RC6 and deep RC6 enabled\n");
	return (INTEL_RC6_ENABLE | INTEL_RC6p_ENABLE);
}