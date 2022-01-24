#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_crtc {int pipe; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lvds_downclock_avail; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int DISPLAY_RATE_SELECT_FPA1 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 struct intel_crtc* FUNC8 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC8(crtc);
	int pipe = intel_crtc->pipe;
	int dpll_reg = FUNC0(pipe);
	int dpll;

	if (FUNC2(dev))
		return;

	if (!dev_priv->lvds_downclock_avail)
		return;

	dpll = FUNC4(dpll_reg);
	if (!FUNC3(dev) && (dpll & DISPLAY_RATE_SELECT_FPA1)) {
		FUNC1("upclocking LVDS\n");

		FUNC6(dev_priv, pipe);

		dpll &= ~DISPLAY_RATE_SELECT_FPA1;
		FUNC5(dpll_reg, dpll);
		FUNC7(dev, pipe);

		dpll = FUNC4(dpll_reg);
		if (dpll & DISPLAY_RATE_SELECT_FPA1)
			FUNC1("failed to upclock LVDS!\n");
	}
}