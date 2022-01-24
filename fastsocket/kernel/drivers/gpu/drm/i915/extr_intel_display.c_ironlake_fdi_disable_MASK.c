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
typedef  int u32 ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_PATTERN_1 ; 
 int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FDI_RX_ENABLE ; 
 int FDI_RX_PHASE_SYNC_POINTER_OVR ; 
 int FUNC2 (int) ; 
 int FDI_TX_ENABLE ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct intel_crtc* FUNC9 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC9(crtc);
	int pipe = intel_crtc->pipe;
	u32 reg, temp;

	/* disable CPU FDI tx and PCH FDI rx */
	reg = FUNC2(pipe);
	temp = FUNC5(reg);
	FUNC6(reg, temp & ~FDI_TX_ENABLE);
	FUNC8(reg);

	reg = FUNC1(pipe);
	temp = FUNC5(reg);
	temp &= ~(0x7 << 16);
	temp |= (FUNC5(FUNC7(pipe)) & PIPECONF_BPC_MASK) << 11;
	FUNC6(reg, temp & ~FDI_RX_ENABLE);

	FUNC8(reg);
	FUNC10(100);

	/* Ironlake workaround, disable clock pointer after downing FDI */
	if (FUNC4(dev)) {
		FUNC6(FUNC0(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
	}

	/* still set train pattern 1 */
	reg = FUNC2(pipe);
	temp = FUNC5(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	FUNC6(reg, temp);

	reg = FUNC1(pipe);
	temp = FUNC5(reg);
	if (FUNC3(dev)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_PATTERN_1;
	}
	/* BPC in FDI rx is consistent with that in PIPECONF */
	temp &= ~(0x07 << 16);
	temp |= (FUNC5(FUNC7(pipe)) & PIPECONF_BPC_MASK) << 11;
	FUNC6(reg, temp);

	FUNC8(reg);
	FUNC10(100);
}