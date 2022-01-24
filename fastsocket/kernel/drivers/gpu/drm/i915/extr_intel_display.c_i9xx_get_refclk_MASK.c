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
struct drm_i915_private {int lvds_ssc_freq; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC6(struct drm_crtc *crtc, int num_connectors)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int refclk;

	if (FUNC2(dev)) {
		refclk = FUNC5(crtc);
	} else if (FUNC4(crtc, INTEL_OUTPUT_LVDS) &&
	    FUNC3(dev_priv) && num_connectors < 2) {
		refclk = dev_priv->lvds_ssc_freq * 1000;
		FUNC0("using SSC reference clock of %d MHz\n",
			      refclk / 1000);
	} else if (!FUNC1(dev)) {
		refclk = 96000;
	} else {
		refclk = 48000;
	}

	return refclk;
}