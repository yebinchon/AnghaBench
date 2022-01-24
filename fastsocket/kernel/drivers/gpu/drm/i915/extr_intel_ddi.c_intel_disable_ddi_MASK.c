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
typedef  int uint32_t ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int AUDIO_ELD_VALID_A ; 
 int AUDIO_OUTPUT_ENABLE_A ; 
 int /*<<< orphan*/  HSW_AUD_PIN_ELD_CP_VLD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int INTEL_OUTPUT_EDP ; 
 struct intel_dp* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 struct intel_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC5(struct intel_encoder *intel_encoder)
{
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC4(crtc);
	int pipe = intel_crtc->pipe;
	int type = intel_encoder->type;
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t tmp;

	if (type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC2(encoder);

		FUNC3(intel_dp);
	}

	tmp = FUNC0(HSW_AUD_PIN_ELD_CP_VLD);
	tmp &= ~((AUDIO_OUTPUT_ENABLE_A | AUDIO_ELD_VALID_A) << (pipe * 4));
	FUNC1(HSW_AUD_PIN_ELD_CP_VLD, tmp);
}