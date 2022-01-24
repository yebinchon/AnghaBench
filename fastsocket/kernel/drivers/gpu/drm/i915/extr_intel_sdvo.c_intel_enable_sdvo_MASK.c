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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct intel_sdvo {int /*<<< orphan*/  attached_output; int /*<<< orphan*/  sdvo_reg; } ;
struct TYPE_2__ {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PIPE_B ; 
 scalar_t__ SDVO_CMD_STATUS_SUCCESS ; 
 int SDVO_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*) ; 
 int SDVO_PIPE_B_SELECT ; 
 scalar_t__ FUNC4 (struct intel_sdvo*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int) ; 
 struct intel_crtc* FUNC9 (struct drm_crtc*) ; 
 struct intel_sdvo* FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(struct intel_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_sdvo *intel_sdvo = FUNC10(&encoder->base);
	struct intel_crtc *intel_crtc = FUNC9(encoder->base.crtc);
	u32 temp;
	bool input1, input2;
	int i;
	u8 status;

	temp = FUNC2(intel_sdvo->sdvo_reg);
	if ((temp & SDVO_ENABLE) == 0) {
		/* HW workaround for IBX, we need to move the port
		 * to transcoder A before disabling it. */
		if (FUNC1(dev)) {
			struct drm_crtc *crtc = encoder->base.crtc;
			int pipe = crtc ? FUNC9(crtc)->pipe : -1;

			/* Restore the transcoder select bit. */
			if (pipe == PIPE_B)
				temp |= SDVO_PIPE_B_SELECT;
		}

		FUNC7(intel_sdvo, temp | SDVO_ENABLE);
	}
	for (i = 0; i < 2; i++)
		FUNC8(dev, intel_crtc->pipe);

	status = FUNC4(intel_sdvo, &input1, &input2);
	/* Warn if the device reported failure to sync.
	 * A lot of SDVO devices fail to notify of sync, but it's
	 * a given it the status is a success, we succeeded.
	 */
	if (status == SDVO_CMD_STATUS_SUCCESS && !input1) {
		FUNC0("First %s output reported failure to "
				"sync\n", FUNC3(intel_sdvo));
	}

	if (0)
		FUNC6(intel_sdvo,
						   DRM_MODE_DPMS_ON);
	FUNC5(intel_sdvo, intel_sdvo->attached_output);
}