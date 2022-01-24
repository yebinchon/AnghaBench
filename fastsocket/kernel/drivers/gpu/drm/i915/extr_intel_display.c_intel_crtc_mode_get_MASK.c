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
struct intel_crtc {int cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int hdisplay; int htotal; int hsync_start; int hsync_end; int vdisplay; int vtotal; int vsync_start; int vsync_end; int /*<<< orphan*/  clock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_crtc*) ; 
 struct drm_display_mode* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (struct drm_crtc*) ; 

struct drm_display_mode *FUNC9(struct drm_device *dev,
					     struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC8(crtc);
	enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;
	struct drm_display_mode *mode;
	int htot = FUNC2(FUNC1(cpu_transcoder));
	int hsync = FUNC2(FUNC0(cpu_transcoder));
	int vtot = FUNC2(FUNC4(cpu_transcoder));
	int vsync = FUNC2(FUNC3(cpu_transcoder));

	mode = FUNC7(sizeof(*mode), GFP_KERNEL);
	if (!mode)
		return NULL;

	mode->clock = FUNC6(dev, crtc);
	mode->hdisplay = (htot & 0xffff) + 1;
	mode->htotal = ((htot & 0xffff0000) >> 16) + 1;
	mode->hsync_start = (hsync & 0xffff) + 1;
	mode->hsync_end = ((hsync & 0xffff0000) >> 16) + 1;
	mode->vdisplay = (vtot & 0xffff) + 1;
	mode->vtotal = ((vtot & 0xffff0000) >> 16) + 1;
	mode->vsync_start = (vsync & 0xffff) + 1;
	mode->vsync_end = ((vsync & 0xffff0000) >> 16) + 1;

	FUNC5(mode);

	return mode;
}