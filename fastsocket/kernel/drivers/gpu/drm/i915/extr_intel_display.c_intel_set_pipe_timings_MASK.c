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
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; int cpu_transcoder; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int flags; int crtc_vtotal; int crtc_vblank_end; int crtc_hsync_start; int crtc_htotal; int crtc_hdisplay; int crtc_hblank_start; int crtc_hblank_end; int crtc_hsync_end; int crtc_vdisplay; int crtc_vblank_start; int crtc_vsync_start; int crtc_vsync_end; int hdisplay; int vdisplay; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int PIPE_B ; 
 int PIPE_C ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct intel_crtc *intel_crtc,
				   struct drm_display_mode *mode,
				   struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = intel_crtc->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	enum pipe pipe = intel_crtc->pipe;
	enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;
	uint32_t vsyncshift;

	if (!FUNC6(dev) && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
		/* the chip adds 2 halflines automatically */
		adjusted_mode->crtc_vtotal -= 1;
		adjusted_mode->crtc_vblank_end -= 1;
		vsyncshift = adjusted_mode->crtc_hsync_start
			     - adjusted_mode->crtc_htotal / 2;
	} else {
		vsyncshift = 0;
	}

	if (FUNC5(dev)->gen > 3)
		FUNC4(FUNC11(cpu_transcoder), vsyncshift);

	FUNC4(FUNC2(cpu_transcoder),
		   (adjusted_mode->crtc_hdisplay - 1) |
		   ((adjusted_mode->crtc_htotal - 1) << 16));
	FUNC4(FUNC0(cpu_transcoder),
		   (adjusted_mode->crtc_hblank_start - 1) |
		   ((adjusted_mode->crtc_hblank_end - 1) << 16));
	FUNC4(FUNC1(cpu_transcoder),
		   (adjusted_mode->crtc_hsync_start - 1) |
		   ((adjusted_mode->crtc_hsync_end - 1) << 16));

	FUNC4(FUNC12(cpu_transcoder),
		   (adjusted_mode->crtc_vdisplay - 1) |
		   ((adjusted_mode->crtc_vtotal - 1) << 16));
	FUNC4(FUNC9(cpu_transcoder),
		   (adjusted_mode->crtc_vblank_start - 1) |
		   ((adjusted_mode->crtc_vblank_end - 1) << 16));
	FUNC4(FUNC10(cpu_transcoder),
		   (adjusted_mode->crtc_vsync_start - 1) |
		   ((adjusted_mode->crtc_vsync_end - 1) << 16));

	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
	 * documented on the DDI_FUNC_CTL register description, EDP Input Select
	 * bits. */
	if (FUNC7(dev) && cpu_transcoder == TRANSCODER_EDP &&
	    (pipe == PIPE_B || pipe == PIPE_C))
		FUNC4(FUNC12(pipe), FUNC3(FUNC12(cpu_transcoder)));

	/* pipesrc controls the size that is scaled from, which should
	 * always be the user's requested size.
	 */
	FUNC4(FUNC8(pipe),
		   ((mode->hdisplay - 1) << 16) | (mode->vdisplay - 1));
}