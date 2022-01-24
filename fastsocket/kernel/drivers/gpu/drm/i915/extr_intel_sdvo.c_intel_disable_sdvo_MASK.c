#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_sdvo {int /*<<< orphan*/  sdvo_reg; } ;
struct TYPE_5__ {TYPE_3__* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_7__ {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SDVO_ENABLE ; 
 int SDVO_PIPE_B_SELECT ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__* FUNC9 (struct drm_crtc*) ; 
 struct intel_sdvo* FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = encoder->base.dev->dev_private;
	struct intel_sdvo *intel_sdvo = FUNC10(&encoder->base);
	u32 temp;

	FUNC4(intel_sdvo, 0);
	if (0)
		FUNC5(intel_sdvo,
						   DRM_MODE_DPMS_OFF);

	temp = FUNC1(intel_sdvo->sdvo_reg);
	if ((temp & SDVO_ENABLE) != 0) {
		/* HW workaround for IBX, we need to move the port to
		 * transcoder A before disabling it. */
		if (FUNC0(encoder->base.dev)) {
			struct drm_crtc *crtc = encoder->base.crtc;
			int pipe = crtc ? FUNC9(crtc)->pipe : -1;

			if (temp & SDVO_PIPE_B_SELECT) {
				temp &= ~SDVO_PIPE_B_SELECT;
				FUNC2(intel_sdvo->sdvo_reg, temp);
				FUNC3(intel_sdvo->sdvo_reg);

				/* Again we need to write this twice. */
				FUNC2(intel_sdvo->sdvo_reg, temp);
				FUNC3(intel_sdvo->sdvo_reg);

				/* Transcoder selection bits only update
				 * effectively on vblank. */
				if (crtc)
					FUNC7(encoder->base.dev, pipe);
				else
					FUNC8(50);
			}
		}

		FUNC6(intel_sdvo, temp & ~SDVO_ENABLE);
	}
}