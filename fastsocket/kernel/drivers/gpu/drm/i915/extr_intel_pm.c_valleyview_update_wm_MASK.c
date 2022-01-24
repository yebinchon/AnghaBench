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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  DSPFW1 ; 
 int /*<<< orphan*/  DSPFW2 ; 
 int /*<<< orphan*/  DSPFW3 ; 
 int DSPFW_CURSORA_MASK ; 
 int DSPFW_CURSORA_SHIFT ; 
 int DSPFW_CURSORB_SHIFT ; 
 int DSPFW_CURSOR_SR_MASK ; 
 int DSPFW_CURSOR_SR_SHIFT ; 
 int DSPFW_PLANEB_SHIFT ; 
 int DSPFW_SR_SHIFT ; 
 int /*<<< orphan*/  FW_BLC_SELF_VLV ; 
 int FW_CSPWRDWNEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (struct drm_device*,scalar_t__,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC5 (struct drm_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  latency_ns ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  valleyview_cursor_wm_info ; 
 int /*<<< orphan*/  valleyview_wm_info ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev)
{
	static const int sr_latency_ns = 12000;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int planea_wm, planeb_wm, cursora_wm, cursorb_wm;
	int plane_sr, cursor_sr;
	int ignore_plane_sr, ignore_cursor_sr;
	unsigned int enabled = 0;

	FUNC7(dev);

	if (FUNC5(dev, 0,
			    &valleyview_wm_info, latency_ns,
			    &valleyview_cursor_wm_info, latency_ns,
			    &planea_wm, &cursora_wm))
		enabled |= 1;

	if (FUNC5(dev, 1,
			    &valleyview_wm_info, latency_ns,
			    &valleyview_cursor_wm_info, latency_ns,
			    &planeb_wm, &cursorb_wm))
		enabled |= 2;

	if (FUNC6(enabled) &&
	    FUNC4(dev, FUNC3(enabled) - 1,
			     sr_latency_ns,
			     &valleyview_wm_info,
			     &valleyview_cursor_wm_info,
			     &plane_sr, &ignore_cursor_sr) &&
	    FUNC4(dev, FUNC3(enabled) - 1,
			     2*sr_latency_ns,
			     &valleyview_wm_info,
			     &valleyview_cursor_wm_info,
			     &ignore_plane_sr, &cursor_sr)) {
		FUNC2(FW_BLC_SELF_VLV, FW_CSPWRDWNEN);
	} else {
		FUNC2(FW_BLC_SELF_VLV,
			   FUNC1(FW_BLC_SELF_VLV) & ~FW_CSPWRDWNEN);
		plane_sr = cursor_sr = 0;
	}

	FUNC0("Setting FIFO watermarks - A: plane=%d, cursor=%d, B: plane=%d, cursor=%d, SR: plane=%d, cursor=%d\n",
		      planea_wm, cursora_wm,
		      planeb_wm, cursorb_wm,
		      plane_sr, cursor_sr);

	FUNC2(DSPFW1,
		   (plane_sr << DSPFW_SR_SHIFT) |
		   (cursorb_wm << DSPFW_CURSORB_SHIFT) |
		   (planeb_wm << DSPFW_PLANEB_SHIFT) |
		   planea_wm);
	FUNC2(DSPFW2,
		   (FUNC1(DSPFW2) & ~DSPFW_CURSORA_MASK) |
		   (cursora_wm << DSPFW_CURSORA_SHIFT));
	FUNC2(DSPFW3,
		   (FUNC1(DSPFW3) & ~DSPFW_CURSOR_SR_MASK) |
		   (cursor_sr << DSPFW_CURSOR_SR_SHIFT));
}