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
struct intel_crtc {int pipe; TYPE_1__ base; } ;
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
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct intel_crtc *intel_crtc)
{
	struct drm_device *dev = intel_crtc->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int pipe = intel_crtc->pipe;
	u32 reg, temp;

	/* Switch from PCDclk to Rawclk */
	reg = FUNC0(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_PCDCLK);

	/* Disable CPU FDI TX PLL */
	reg = FUNC1(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_TX_PLL_ENABLE);

	FUNC4(reg);
	FUNC5(100);

	reg = FUNC0(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_RX_PLL_ENABLE);

	/* Wait for the clocks to turn off. */
	FUNC4(reg);
	FUNC5(100);
}