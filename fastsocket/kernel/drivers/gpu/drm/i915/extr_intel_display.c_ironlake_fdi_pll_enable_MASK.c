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
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; int fdi_lanes; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FDI_PCDCLK ; 
 int FUNC0 (int) ; 
 int FDI_RX_PLL_ENABLE ; 
 int FUNC1 (int) ; 
 int FDI_TX_PLL_ENABLE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *intel_crtc)
{
	struct drm_device *dev = intel_crtc->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int pipe = intel_crtc->pipe;
	u32 reg, temp;


	/* enable PCH FDI RX PLL, wait warmup plus DMI latency */
	reg = FUNC0(pipe);
	temp = FUNC2(reg);
	temp &= ~((0x7 << 19) | (0x7 << 16));
	temp |= (intel_crtc->fdi_lanes - 1) << 19;
	temp |= (FUNC2(FUNC4(pipe)) & PIPECONF_BPC_MASK) << 11;
	FUNC3(reg, temp | FDI_RX_PLL_ENABLE);

	FUNC5(reg);
	FUNC6(200);

	/* Switch from Rawclk to PCDclk */
	temp = FUNC2(reg);
	FUNC3(reg, temp | FDI_PCDCLK);

	FUNC5(reg);
	FUNC6(200);

	/* Enable CPU FDI TX PLL, always on for Ironlake */
	reg = FUNC1(pipe);
	temp = FUNC2(reg);
	if ((temp & FDI_TX_PLL_ENABLE) == 0) {
		FUNC3(reg, temp | FDI_TX_PLL_ENABLE);

		FUNC5(reg);
		FUNC6(100);
	}
}