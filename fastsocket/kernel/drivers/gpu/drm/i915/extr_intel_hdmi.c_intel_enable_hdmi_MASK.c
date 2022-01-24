#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_hdmi {int /*<<< orphan*/  sdvox_reg; scalar_t__ has_audio; } ;
struct TYPE_4__ {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {int pipe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PIPE_B ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SDVO_AUDIO_ENABLE ; 
 int SDVO_ENABLE ; 
 int SDVO_PIPE_B_SELECT ; 
 struct intel_hdmi* FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_hdmi *intel_hdmi = FUNC5(&encoder->base);
	u32 temp;
	u32 enable_bits = SDVO_ENABLE;

	if (intel_hdmi->has_audio)
		enable_bits |= SDVO_AUDIO_ENABLE;

	temp = FUNC2(intel_hdmi->sdvox_reg);

	/* HW workaround for IBX, we need to move the port to transcoder A
	 * before disabling it. */
	if (FUNC0(dev)) {
		struct drm_crtc *crtc = encoder->base.crtc;
		int pipe = crtc ? FUNC6(crtc)->pipe : -1;

		/* Restore the transcoder select bit. */
		if (pipe == PIPE_B)
			enable_bits |= SDVO_PIPE_B_SELECT;
	}

	/* HW workaround, need to toggle enable bit off and on for 12bpc, but
	 * we do this anyway which shows more stable in testing.
	 */
	if (FUNC1(dev)) {
		FUNC3(intel_hdmi->sdvox_reg, temp & ~SDVO_ENABLE);
		FUNC4(intel_hdmi->sdvox_reg);
	}

	temp |= enable_bits;

	FUNC3(intel_hdmi->sdvox_reg, temp);
	FUNC4(intel_hdmi->sdvox_reg);

	/* HW workaround, need to write this twice for issue that may result
	 * in first write getting masked.
	 */
	if (FUNC1(dev)) {
		FUNC3(intel_hdmi->sdvox_reg, temp);
		FUNC4(intel_hdmi->sdvox_reg);
	}
}