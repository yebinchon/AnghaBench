#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_display_mode {int clock; int private_flags; scalar_t__ hsync_start; scalar_t__ hdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 int INTEL_MODE_CRTC_TIMINGS_SET ; 
 int IRONLAKE_FDI_FREQ ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drm_crtc *crtc,
				  const struct drm_display_mode *mode,
				  struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = crtc->dev;

	if (FUNC0(dev)) {
		/* FDI link clock is fixed at 2.7G */
		if (mode->clock * 3 > IRONLAKE_FDI_FREQ * 4)
			return false;
	}

	/* All interlaced capable intel hw wants timings in frames. Note though
	 * that intel_lvds_mode_fixup does some funny tricks with the crtc
	 * timings, so we need to be careful not to clobber these.*/
	if (!(adjusted_mode->private_flags & INTEL_MODE_CRTC_TIMINGS_SET))
		FUNC3(adjusted_mode, 0);

	/* WaPruneModeWithIncorrectHsyncOffset: Cantiga+ cannot handle modes
	 * with a hsync front porch of 0.
	 */
	if ((FUNC1(dev)->gen > 4 || FUNC2(dev)) &&
		adjusted_mode->hsync_start == adjusted_mode->hdisplay)
		return false;

	return true;
}