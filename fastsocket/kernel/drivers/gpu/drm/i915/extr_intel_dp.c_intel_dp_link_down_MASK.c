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
typedef  int uint32_t ;
struct intel_dp {int DP; int panel_power_down_delay; int /*<<< orphan*/  output_reg; } ;
struct TYPE_3__ {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int DP_AUDIO_OUTPUT_ENABLE ; 
 int DP_LINK_TRAIN_MASK ; 
 int DP_LINK_TRAIN_MASK_CPT ; 
 int DP_LINK_TRAIN_PAT_IDLE ; 
 int DP_LINK_TRAIN_PAT_IDLE_CPT ; 
 int DP_PIPEB_SELECT ; 
 int DP_PORT_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 struct intel_digital_port* FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct intel_crtc* FUNC13 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC14(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC9(intel_dp);
	struct drm_device *dev = intel_dig_port->base.base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc =
		FUNC13(intel_dig_port->base.base.crtc);
	uint32_t DP = intel_dp->DP;

	/*
	 * DDI code has a strict mode set sequence and we should try to respect
	 * it, otherwise we might hang the machine in many different ways. So we
	 * really should be disabling the port only on a complete crtc_disable
	 * sequence. This function is just called under two conditions on DDI
	 * code:
	 * - Link train failed while doing crtc_enable, and on this case we
	 *   really should respect the mode set sequence and wait for a
	 *   crtc_disable.
	 * - Someone turned the monitor off and intel_dp_check_link_status
	 *   called us. We don't need to disable the whole port on this case, so
	 *   when someone turns the monitor on again,
	 *   intel_ddi_prepare_link_retrain will take care of redoing the link
	 *   train.
	 */
	if (FUNC1(dev))
		return;

	if (FUNC8((FUNC4(intel_dp->output_reg) & DP_PORT_EN) == 0))
		return;

	FUNC0("\n");

	if (FUNC2(dev) && (FUNC6(dev) || !FUNC11(intel_dp))) {
		DP &= ~DP_LINK_TRAIN_MASK_CPT;
		FUNC5(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE_CPT);
	} else {
		DP &= ~DP_LINK_TRAIN_MASK;
		FUNC5(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE);
	}
	FUNC7(intel_dp->output_reg);

	/* We don't really know why we're doing this */
	FUNC10(dev, intel_crtc->pipe);

	if (FUNC3(dev) &&
	    FUNC4(intel_dp->output_reg) & DP_PIPEB_SELECT) {
		struct drm_crtc *crtc = intel_dig_port->base.base.crtc;

		/* Hardware workaround: leaving our transcoder select
		 * set to transcoder B while it's off will prevent the
		 * corresponding HDMI output on transcoder A.
		 *
		 * Combine this with another hardware workaround:
		 * transcoder select bit can only be cleared while the
		 * port is enabled.
		 */
		DP &= ~DP_PIPEB_SELECT;
		FUNC5(intel_dp->output_reg, DP);

		/* Changes to enable or select take place the vblank
		 * after being written.
		 */
		if (FUNC8(crtc == NULL)) {
			/* We should never try to disable a port without a crtc
			 * attached. For paranoia keep the code around for a
			 * bit. */
			FUNC7(intel_dp->output_reg);
			FUNC12(50);
		} else
			FUNC10(dev, intel_crtc->pipe);
	}

	DP &= ~DP_AUDIO_OUTPUT_ENABLE;
	FUNC5(intel_dp->output_reg, DP & ~DP_PORT_EN);
	FUNC7(intel_dp->output_reg);
	FUNC12(intel_dp->panel_power_down_delay);
}