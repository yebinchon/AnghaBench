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
typedef  int /*<<< orphan*/  u32 ;
struct intel_crtc {scalar_t__ pipe; } ;
struct intel_crt {int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct drm_display_mode {int flags; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA_HOTPLUG_BITS ; 
 int /*<<< orphan*/  ADPA_HSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  ADPA_PIPE_A_SELECT ; 
 int /*<<< orphan*/  ADPA_PIPE_B_SELECT ; 
 int /*<<< orphan*/  ADPA_VSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct intel_crt* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder,
			       struct drm_display_mode *mode,
			       struct drm_display_mode *adjusted_mode)
{

	struct drm_device *dev = encoder->dev;
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crt *crt =
		FUNC6(FUNC8(encoder));
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 adpa;

	if (FUNC3(dev))
		adpa = ADPA_HOTPLUG_BITS;
	else
		adpa = 0;

	if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
		adpa |= ADPA_HSYNC_ACTIVE_HIGH;
	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
		adpa |= ADPA_VSYNC_ACTIVE_HIGH;

	/* For CPT allow 3 pipe config, for others just use A or B */
	if (FUNC2(dev))
		; /* Those bits don't exist here */
	else if (FUNC1(dev))
		adpa |= FUNC5(intel_crtc->pipe);
	else if (intel_crtc->pipe == 0)
		adpa |= ADPA_PIPE_A_SELECT;
	else
		adpa |= ADPA_PIPE_B_SELECT;

	if (!FUNC3(dev))
		FUNC4(FUNC0(intel_crtc->pipe), 0);

	FUNC4(crt->adpa_reg, adpa);
}