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
struct intel_crtc {int pipe; int plane; int fdi_lanes; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_PATTERN_1 ; 
 int FDI_LINK_TRAIN_PATTERN_2 ; 
 int FDI_RX_BIT_LOCK ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FDI_RX_ENABLE ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FDI_RX_PHASE_SYNC_POINTER_EN ; 
 int FDI_RX_PHASE_SYNC_POINTER_OVR ; 
 int FDI_RX_SYMBOL_LOCK ; 
 int FUNC6 (int) ; 
 int FDI_TX_ENABLE ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 struct intel_crtc* FUNC12 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC12(crtc);
	int pipe = intel_crtc->pipe;
	int plane = intel_crtc->plane;
	u32 reg, temp, tries;

	/* FDI needs bits from pipe & plane first */
	FUNC10(dev_priv, pipe);
	FUNC11(dev_priv, plane);

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC5(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC8(reg, temp);
	FUNC7(reg);
	FUNC13(150);

	/* enable CPU FDI TX and PCH FDI RX */
	reg = FUNC6(pipe);
	temp = FUNC7(reg);
	temp &= ~(7 << 19);
	temp |= (intel_crtc->fdi_lanes - 1) << 19;
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	FUNC8(reg, temp | FDI_TX_ENABLE);

	reg = FUNC3(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	FUNC8(reg, temp | FDI_RX_ENABLE);

	FUNC9(reg);
	FUNC13(150);

	/* Ironlake workaround, enable clock pointer after FDI enable*/
	FUNC8(FUNC2(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
	FUNC8(FUNC2(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR |
		   FDI_RX_PHASE_SYNC_POINTER_EN);

	reg = FUNC4(pipe);
	for (tries = 0; tries < 5; tries++) {
		temp = FUNC7(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if ((temp & FDI_RX_BIT_LOCK)) {
			FUNC0("FDI train 1 done.\n");
			FUNC8(reg, temp | FDI_RX_BIT_LOCK);
			break;
		}
	}
	if (tries == 5)
		FUNC1("FDI train 1 fail!\n");

	/* Train 2 */
	reg = FUNC6(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	FUNC8(reg, temp);

	reg = FUNC3(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	FUNC8(reg, temp);

	FUNC9(reg);
	FUNC13(150);

	reg = FUNC4(pipe);
	for (tries = 0; tries < 5; tries++) {
		temp = FUNC7(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if (temp & FDI_RX_SYMBOL_LOCK) {
			FUNC8(reg, temp | FDI_RX_SYMBOL_LOCK);
			FUNC0("FDI train 2 done.\n");
			break;
		}
	}
	if (tries == 5)
		FUNC1("FDI train 2 fail!\n");

	FUNC0("FDI train done\n");

}