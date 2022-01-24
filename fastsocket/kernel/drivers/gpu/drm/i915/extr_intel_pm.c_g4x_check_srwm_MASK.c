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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static bool FUNC1(struct drm_device *dev,
			   int display_wm, int cursor_wm,
			   const struct intel_watermark_params *display,
			   const struct intel_watermark_params *cursor)
{
	FUNC0("SR watermark: display plane %d, cursor %d\n",
		      display_wm, cursor_wm);

	if (display_wm > display->max_wm) {
		FUNC0("display watermark is too large(%d/%ld), disabling\n",
			      display_wm, display->max_wm);
		return false;
	}

	if (cursor_wm > cursor->max_wm) {
		FUNC0("cursor watermark is too large(%d/%ld), disabling\n",
			      cursor_wm, cursor->max_wm);
		return false;
	}

	if (!(display_wm || cursor_wm)) {
		FUNC0("SR latency is 0, disabling\n");
		return false;
	}

	return true;
}