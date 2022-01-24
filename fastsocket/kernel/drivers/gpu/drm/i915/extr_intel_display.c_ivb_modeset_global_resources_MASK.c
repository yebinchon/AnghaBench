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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/ * pipe_to_crtc_mapping; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FDI_BC_BIFURCATION_SELECT ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int FDI_RX_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 size_t PIPE_B ; 
 size_t PIPE_C ; 
 int /*<<< orphan*/  SOUTH_CHICKEN1 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *pipe_B_crtc =
		FUNC5(dev_priv->pipe_to_crtc_mapping[PIPE_B]);
	struct intel_crtc *pipe_C_crtc =
		FUNC5(dev_priv->pipe_to_crtc_mapping[PIPE_C]);
	uint32_t temp;

	/* When everything is off disable fdi C so that we could enable fdi B
	 * with all lanes. XXX: This misses the case where a pipe is not using
	 * any pch resources and so doesn't need any fdi lanes. */
	if (!pipe_B_crtc->base.enabled && !pipe_C_crtc->base.enabled) {
		FUNC4(FUNC2(FUNC1(PIPE_B)) & FDI_RX_ENABLE);
		FUNC4(FUNC2(FUNC1(PIPE_C)) & FDI_RX_ENABLE);

		temp = FUNC2(SOUTH_CHICKEN1);
		temp &= ~FDI_BC_BIFURCATION_SELECT;
		FUNC0("disabling fdi C rx\n");
		FUNC3(SOUTH_CHICKEN1, temp);
	}
}