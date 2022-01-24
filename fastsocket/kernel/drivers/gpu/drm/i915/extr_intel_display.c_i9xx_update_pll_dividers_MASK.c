#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_crtc {int pipe; int lowfreq_avail; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int n; int m1; int m2; } ;
typedef  TYPE_1__ intel_clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ i915_powersave ; 
 scalar_t__ FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				     intel_clock_t *clock,
				     intel_clock_t *reduced_clock)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC5(crtc);
	int pipe = intel_crtc->pipe;
	u32 fp, fp2 = 0;

	if (FUNC3(dev)) {
		fp = (1 << clock->n) << 16 | clock->m1 << 8 | clock->m2;
		if (reduced_clock)
			fp2 = (1 << reduced_clock->n) << 16 |
				reduced_clock->m1 << 8 | reduced_clock->m2;
	} else {
		fp = clock->n << 16 | clock->m1 << 8 | clock->m2;
		if (reduced_clock)
			fp2 = reduced_clock->n << 16 | reduced_clock->m1 << 8 |
				reduced_clock->m2;
	}

	FUNC2(FUNC0(pipe), fp);

	intel_crtc->lowfreq_avail = false;
	if (FUNC4(crtc, INTEL_OUTPUT_LVDS) &&
	    reduced_clock && i915_powersave) {
		FUNC2(FUNC1(pipe), fp2);
		intel_crtc->lowfreq_avail = true;
	} else {
		FUNC2(FUNC1(pipe), fp);
	}
}