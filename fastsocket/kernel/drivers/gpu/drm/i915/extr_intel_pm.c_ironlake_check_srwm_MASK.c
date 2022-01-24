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
struct intel_watermark_params {int max_wm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int DISP_FBC_WM_DIS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SNB_CURSOR_MAX_SRWM ; 
 int /*<<< orphan*/  SNB_DISPLAY_MAX_SRWM ; 
 int SNB_FBC_MAX_SRWM ; 

__attribute__((used)) static bool FUNC3(struct drm_device *dev, int level,
				int fbc_wm, int display_wm, int cursor_wm,
				const struct intel_watermark_params *display,
				const struct intel_watermark_params *cursor)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	FUNC0("watermark %d: display plane %d, fbc lines %d,"
		      " cursor %d\n", level, display_wm, fbc_wm, cursor_wm);

	if (fbc_wm > SNB_FBC_MAX_SRWM) {
		FUNC0("fbc watermark(%d) is too large(%d), disabling wm%d+\n",
			      fbc_wm, SNB_FBC_MAX_SRWM, level);

		/* fbc has it's own way to disable FBC WM */
		FUNC2(DISP_ARB_CTL,
			   FUNC1(DISP_ARB_CTL) | DISP_FBC_WM_DIS);
		return false;
	}

	if (display_wm > display->max_wm) {
		FUNC0("display watermark(%d) is too large(%d), disabling wm%d+\n",
			      display_wm, SNB_DISPLAY_MAX_SRWM, level);
		return false;
	}

	if (cursor_wm > cursor->max_wm) {
		FUNC0("cursor watermark(%d) is too large(%d), disabling wm%d+\n",
			      cursor_wm, SNB_CURSOR_MAX_SRWM, level);
		return false;
	}

	if (!(fbc_wm || display_wm || cursor_wm)) {
		FUNC0("latency %d is 0, disabling wm%d+\n", level, level);
		return false;
	}

	return true;
}