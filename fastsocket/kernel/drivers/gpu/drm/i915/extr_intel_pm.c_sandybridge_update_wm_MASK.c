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
struct drm_i915_private {scalar_t__ sprite_scaling_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  WM0_PIPEA_ILK ; 
 int /*<<< orphan*/  WM0_PIPEB_ILK ; 
 int WM0_PIPE_CURSOR_MASK ; 
 int WM0_PIPE_PLANE_MASK ; 
 int WM0_PIPE_PLANE_SHIFT ; 
 int WM1_LP_FBC_SHIFT ; 
 int /*<<< orphan*/  WM1_LP_ILK ; 
 int WM1_LP_LATENCY_SHIFT ; 
 int WM1_LP_SR_EN ; 
 int WM1_LP_SR_SHIFT ; 
 int WM2_LP_EN ; 
 int /*<<< orphan*/  WM2_LP_ILK ; 
 int WM3_LP_EN ; 
 int /*<<< orphan*/  WM3_LP_ILK ; 
 int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (struct drm_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  sandybridge_cursor_srwm_info ; 
 int /*<<< orphan*/  sandybridge_cursor_wm_info ; 
 int /*<<< orphan*/  sandybridge_display_srwm_info ; 
 int /*<<< orphan*/  sandybridge_display_wm_info ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

__attribute__((used)) static void FUNC11(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int latency = FUNC3() * 100;	/* In unit 0.1us */
	u32 val;
	int fbc_wm, plane_wm, cursor_wm;
	unsigned int enabled;

	enabled = 0;
	if (FUNC8(dev, 0,
			    &sandybridge_display_wm_info, latency,
			    &sandybridge_cursor_wm_info, latency,
			    &plane_wm, &cursor_wm)) {
		val = FUNC1(WM0_PIPEA_ILK);
		val &= ~(WM0_PIPE_PLANE_MASK | WM0_PIPE_CURSOR_MASK);
		FUNC2(WM0_PIPEA_ILK, val |
			   ((plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm));
		FUNC0("FIFO watermarks For pipe A -"
			      " plane %d, " "cursor: %d\n",
			      plane_wm, cursor_wm);
		enabled |= 1;
	}

	if (FUNC8(dev, 1,
			    &sandybridge_display_wm_info, latency,
			    &sandybridge_cursor_wm_info, latency,
			    &plane_wm, &cursor_wm)) {
		val = FUNC1(WM0_PIPEB_ILK);
		val &= ~(WM0_PIPE_PLANE_MASK | WM0_PIPE_CURSOR_MASK);
		FUNC2(WM0_PIPEB_ILK, val |
			   ((plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm));
		FUNC0("FIFO watermarks For pipe B -"
			      " plane %d, cursor: %d\n",
			      plane_wm, cursor_wm);
		enabled |= 2;
	}

	/*
	 * Calculate and update the self-refresh watermark only when one
	 * display plane is used.
	 *
	 * SNB support 3 levels of watermark.
	 *
	 * WM1/WM2/WM2 watermarks have to be enabled in the ascending order,
	 * and disabled in the descending order
	 *
	 */
	FUNC2(WM3_LP_ILK, 0);
	FUNC2(WM2_LP_ILK, 0);
	FUNC2(WM1_LP_ILK, 0);

	if (!FUNC10(enabled) ||
	    dev_priv->sprite_scaling_enabled)
		return;
	enabled = FUNC7(enabled) - 1;

	/* WM1 */
	if (!FUNC9(dev, 1, enabled,
				   FUNC4() * 500,
				   &sandybridge_display_srwm_info,
				   &sandybridge_cursor_srwm_info,
				   &fbc_wm, &plane_wm, &cursor_wm))
		return;

	FUNC2(WM1_LP_ILK,
		   WM1_LP_SR_EN |
		   (FUNC4() << WM1_LP_LATENCY_SHIFT) |
		   (fbc_wm << WM1_LP_FBC_SHIFT) |
		   (plane_wm << WM1_LP_SR_SHIFT) |
		   cursor_wm);

	/* WM2 */
	if (!FUNC9(dev, 2, enabled,
				   FUNC5() * 500,
				   &sandybridge_display_srwm_info,
				   &sandybridge_cursor_srwm_info,
				   &fbc_wm, &plane_wm, &cursor_wm))
		return;

	FUNC2(WM2_LP_ILK,
		   WM2_LP_EN |
		   (FUNC5() << WM1_LP_LATENCY_SHIFT) |
		   (fbc_wm << WM1_LP_FBC_SHIFT) |
		   (plane_wm << WM1_LP_SR_SHIFT) |
		   cursor_wm);

	/* WM3 */
	if (!FUNC9(dev, 3, enabled,
				   FUNC6() * 500,
				   &sandybridge_display_srwm_info,
				   &sandybridge_cursor_srwm_info,
				   &fbc_wm, &plane_wm, &cursor_wm))
		return;

	FUNC2(WM3_LP_ILK,
		   WM3_LP_EN |
		   (FUNC6() << WM1_LP_LATENCY_SHIFT) |
		   (fbc_wm << WM1_LP_FBC_SHIFT) |
		   (plane_wm << WM1_LP_SR_SHIFT) |
		   cursor_wm);
}