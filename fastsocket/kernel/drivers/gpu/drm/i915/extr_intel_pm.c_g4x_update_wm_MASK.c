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
 int DSPFW_HPLL_SR_EN ; 
 int DSPFW_PLANEB_SHIFT ; 
 int DSPFW_SR_SHIFT ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (struct drm_device*,scalar_t__,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC5 (struct drm_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  g4x_cursor_wm_info ; 
 int /*<<< orphan*/  g4x_wm_info ; 
 int /*<<< orphan*/  latency_ns ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev)
{
	static const int sr_latency_ns = 12000;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int planea_wm, planeb_wm, cursora_wm, cursorb_wm;
	int plane_sr, cursor_sr;
	unsigned int enabled = 0;

	if (FUNC5(dev, 0,
			    &g4x_wm_info, latency_ns,
			    &g4x_cursor_wm_info, latency_ns,
			    &planea_wm, &cursora_wm))
		enabled |= 1;

	if (FUNC5(dev, 1,
			    &g4x_wm_info, latency_ns,
			    &g4x_cursor_wm_info, latency_ns,
			    &planeb_wm, &cursorb_wm))
		enabled |= 2;

	if (FUNC6(enabled) &&
	    FUNC4(dev, FUNC3(enabled) - 1,
			     sr_latency_ns,
			     &g4x_wm_info,
			     &g4x_cursor_wm_info,
			     &plane_sr, &cursor_sr)) {
		FUNC2(FW_BLC_SELF, FW_BLC_SELF_EN);
	} else {
		FUNC2(FW_BLC_SELF,
			   FUNC1(FW_BLC_SELF) & ~FW_BLC_SELF_EN);
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
	/* HPLL off in SR has some issues on G4x... disable it */
	FUNC2(DSPFW3,
		   (FUNC1(DSPFW3) & ~(DSPFW_HPLL_SR_EN | DSPFW_CURSOR_SR_MASK)) |
		   (cursor_sr << DSPFW_CURSOR_SR_SHIFT));
}