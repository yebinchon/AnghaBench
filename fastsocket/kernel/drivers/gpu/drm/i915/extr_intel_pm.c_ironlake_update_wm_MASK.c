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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_LP0_CURSOR_LATENCY ; 
 int /*<<< orphan*/  ILK_LP0_PLANE_LATENCY ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  WM0_PIPEA_ILK ; 
 int /*<<< orphan*/  WM0_PIPEB_ILK ; 
 int WM0_PIPE_PLANE_SHIFT ; 
 int WM1_LP_FBC_SHIFT ; 
 int /*<<< orphan*/  WM1_LP_ILK ; 
 int WM1_LP_LATENCY_SHIFT ; 
 int WM1_LP_SR_EN ; 
 int WM1_LP_SR_SHIFT ; 
 int WM2_LP_EN ; 
 int /*<<< orphan*/  WM2_LP_ILK ; 
 int /*<<< orphan*/  WM3_LP_ILK ; 
 int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct drm_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  ironlake_cursor_srwm_info ; 
 int /*<<< orphan*/  ironlake_cursor_wm_info ; 
 int /*<<< orphan*/  ironlake_display_srwm_info ; 
 int /*<<< orphan*/  ironlake_display_wm_info ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int fbc_wm, plane_wm, cursor_wm;
	unsigned int enabled;

	enabled = 0;
	if (FUNC5(dev, 0,
			    &ironlake_display_wm_info,
			    ILK_LP0_PLANE_LATENCY,
			    &ironlake_cursor_wm_info,
			    ILK_LP0_CURSOR_LATENCY,
			    &plane_wm, &cursor_wm)) {
		FUNC1(WM0_PIPEA_ILK,
			   (plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm);
		FUNC0("FIFO watermarks For pipe A -"
			      " plane %d, " "cursor: %d\n",
			      plane_wm, cursor_wm);
		enabled |= 1;
	}

	if (FUNC5(dev, 1,
			    &ironlake_display_wm_info,
			    ILK_LP0_PLANE_LATENCY,
			    &ironlake_cursor_wm_info,
			    ILK_LP0_CURSOR_LATENCY,
			    &plane_wm, &cursor_wm)) {
		FUNC1(WM0_PIPEB_ILK,
			   (plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm);
		FUNC0("FIFO watermarks For pipe B -"
			      " plane %d, cursor: %d\n",
			      plane_wm, cursor_wm);
		enabled |= 2;
	}

	/*
	 * Calculate and update the self-refresh watermark only when one
	 * display plane is used.
	 */
	FUNC1(WM3_LP_ILK, 0);
	FUNC1(WM2_LP_ILK, 0);
	FUNC1(WM1_LP_ILK, 0);

	if (!FUNC7(enabled))
		return;
	enabled = FUNC4(enabled) - 1;

	/* WM1 */
	if (!FUNC6(dev, 1, enabled,
				   FUNC2() * 500,
				   &ironlake_display_srwm_info,
				   &ironlake_cursor_srwm_info,
				   &fbc_wm, &plane_wm, &cursor_wm))
		return;

	FUNC1(WM1_LP_ILK,
		   WM1_LP_SR_EN |
		   (FUNC2() << WM1_LP_LATENCY_SHIFT) |
		   (fbc_wm << WM1_LP_FBC_SHIFT) |
		   (plane_wm << WM1_LP_SR_SHIFT) |
		   cursor_wm);

	/* WM2 */
	if (!FUNC6(dev, 2, enabled,
				   FUNC3() * 500,
				   &ironlake_display_srwm_info,
				   &ironlake_cursor_srwm_info,
				   &fbc_wm, &plane_wm, &cursor_wm))
		return;

	FUNC1(WM2_LP_ILK,
		   WM2_LP_EN |
		   (FUNC3() << WM1_LP_LATENCY_SHIFT) |
		   (fbc_wm << WM1_LP_FBC_SHIFT) |
		   (plane_wm << WM1_LP_SR_SHIFT) |
		   cursor_wm);

	/*
	 * WM3 is unsupported on ILK, probably because we don't have latency
	 * data for that power state
	 */
}