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
struct intel_crtc {int* lut_r; int* lut_g; int* lut_b; int /*<<< orphan*/  pipe; int /*<<< orphan*/  active; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC4 (struct drm_crtc*) ; 

void FUNC5(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC4(crtc);
	int palreg = FUNC3(intel_crtc->pipe);
	int i;

	/* The clocks have to be on to load the palette. */
	if (!crtc->enabled || !intel_crtc->active)
		return;

	/* use legacy palette for Ironlake */
	if (FUNC0(dev))
		palreg = FUNC2(intel_crtc->pipe);

	for (i = 0; i < 256; i++) {
		FUNC1(palreg + 4 * i,
			   (intel_crtc->lut_r[i] << 16) |
			   (intel_crtc->lut_g[i] << 8) |
			   intel_crtc->lut_b[i]);
	}
}