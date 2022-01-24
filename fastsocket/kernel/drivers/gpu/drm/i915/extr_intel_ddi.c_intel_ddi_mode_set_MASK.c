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
struct intel_hdmi {int /*<<< orphan*/  (* set_infoframes ) (struct drm_encoder*,struct drm_display_mode*) ;scalar_t__ has_audio; } ;
struct intel_encoder {int type; } ;
struct intel_dp {int DP; int lane_count; scalar_t__ has_audio; } ;
struct intel_digital_port {int port_reversal; } ;
struct intel_crtc {int pipe; int eld_vld; } ;
struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int DDI_BUF_CTL_ENABLE ; 
 int DDI_BUF_EMP_400MV_0DB_HSW ; 
 int DDI_PORT_WIDTH_X1 ; 
 int DDI_PORT_WIDTH_X2 ; 
 int DDI_PORT_WIDTH_X4 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTEL_OUTPUT_DISPLAYPORT ; 
 int INTEL_OUTPUT_EDP ; 
 int INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 struct intel_digital_port* FUNC3 (struct drm_encoder*) ; 
 struct intel_dp* FUNC4 (struct drm_encoder*) ; 
 struct intel_hdmi* FUNC5 (struct drm_encoder*) ; 
 int FUNC6 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_encoder*,struct drm_display_mode*) ; 
 struct intel_crtc* FUNC12 (struct drm_crtc*) ; 
 struct intel_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC14(struct drm_encoder *encoder,
			       struct drm_display_mode *mode,
			       struct drm_display_mode *adjusted_mode)
{
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC12(crtc);
	struct intel_encoder *intel_encoder = FUNC13(encoder);
	int port = FUNC6(intel_encoder);
	int pipe = intel_crtc->pipe;
	int type = intel_encoder->type;

	FUNC1("Preparing DDI mode for Haswell on port %c, pipe %c\n",
		      FUNC10(port), FUNC9(pipe));

	intel_crtc->eld_vld = false;
	if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC4(encoder);
		struct intel_digital_port *intel_dig_port =
			FUNC3(encoder);

		intel_dp->DP = intel_dig_port->port_reversal |
			       DDI_BUF_CTL_ENABLE | DDI_BUF_EMP_400MV_0DB_HSW;
		switch (intel_dp->lane_count) {
		case 1:
			intel_dp->DP |= DDI_PORT_WIDTH_X1;
			break;
		case 2:
			intel_dp->DP |= DDI_PORT_WIDTH_X2;
			break;
		case 4:
			intel_dp->DP |= DDI_PORT_WIDTH_X4;
			break;
		default:
			intel_dp->DP |= DDI_PORT_WIDTH_X4;
			FUNC2(1, "Unexpected DP lane count %d\n",
			     intel_dp->lane_count);
			break;
		}

		if (intel_dp->has_audio) {
			FUNC0("DP audio on pipe %c on DDI\n",
					 FUNC9(intel_crtc->pipe));

			/* write eld */
			FUNC0("DP audio: write eld information\n");
			FUNC8(encoder, adjusted_mode);
		}

		FUNC7(intel_dp);

	} else if (type == INTEL_OUTPUT_HDMI) {
		struct intel_hdmi *intel_hdmi = FUNC5(encoder);

		if (intel_hdmi->has_audio) {
			/* Proper support for digital audio needs a new logic
			 * and a new set of registers, so we leave it for future
			 * patch bombing.
			 */
			FUNC0("HDMI audio on pipe %c on DDI\n",
					 FUNC9(intel_crtc->pipe));

			/* write eld */
			FUNC0("HDMI audio: write eld information\n");
			FUNC8(encoder, adjusted_mode);
		}

		intel_hdmi->set_infoframes(encoder, adjusted_mode);
	}
}