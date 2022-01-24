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
 int FDI_FE_ERRC_ENABLE ; 
 int FDI_FS_ERRC_ENABLE ; 
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_NONE_IVB ; 
 int FDI_LINK_TRAIN_NORMAL_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ; 
 int FUNC0 (int) ; 
 int FDI_RX_ENHANCE_FRAME_ENABLE ; 
 int FUNC1 (int) ; 
 int FDI_TX_ENHANCE_FRAME_ENABLE ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	int pipe = intel_crtc->pipe;
	u32 reg, temp;

	/* enable normal train */
	reg = FUNC1(pipe);
	temp = FUNC3(reg);
	if (FUNC5(dev)) {
		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
		temp |= FDI_LINK_TRAIN_NONE_IVB | FDI_TX_ENHANCE_FRAME_ENABLE;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_NONE | FDI_TX_ENHANCE_FRAME_ENABLE;
	}
	FUNC4(reg, temp);

	reg = FUNC0(pipe);
	temp = FUNC3(reg);
	if (FUNC2(dev)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_NORMAL_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_NONE;
	}
	FUNC4(reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);

	/* wait one idle pattern time */
	FUNC6(reg);
	FUNC8(1000);

	/* IVB wants error correction enabled */
	if (FUNC5(dev))
		FUNC4(reg, FUNC3(reg) | FDI_FS_ERRC_ENABLE |
			   FDI_FE_ERRC_ENABLE);
}