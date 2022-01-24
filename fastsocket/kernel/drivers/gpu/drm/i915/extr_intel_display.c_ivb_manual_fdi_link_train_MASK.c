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
struct intel_crtc {int pipe; int fdi_lanes; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FDI_COMPOSITE_SYNC ; 
 int FDI_LINK_TRAIN_400MV_0DB_SNB_B ; 
 int FDI_LINK_TRAIN_AUTO ; 
 int FDI_LINK_TRAIN_NONE_IVB ; 
 int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_1_IVB ; 
 int FDI_LINK_TRAIN_PATTERN_2_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_2_IVB ; 
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ; 
 int FDI_LINK_TRAIN_VOL_EMP_MASK ; 
 int FDI_RX_BIT_LOCK ; 
 int FUNC2 (int) ; 
 int FDI_RX_ENABLE ; 
 int FDI_RX_FDI_DELAY_90 ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FDI_RX_SYMBOL_LOCK ; 
 int FDI_RX_TP1_TO_TP2_48 ; 
 int FUNC6 (int) ; 
 int FDI_TX_ENABLE ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int* snb_b_fdi_train_param ; 
 struct intel_crtc* FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC10(crtc);
	int pipe = intel_crtc->pipe;
	u32 reg, temp, i;

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC4(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC8(reg, temp);

	FUNC9(reg);
	FUNC11(150);

	FUNC0("FDI_RX_IIR before link train 0x%x\n",
		      FUNC7(FUNC3(pipe)));

	/* enable CPU FDI TX and PCH FDI RX */
	reg = FUNC6(pipe);
	temp = FUNC7(reg);
	temp &= ~(7 << 19);
	temp |= (intel_crtc->fdi_lanes - 1) << 19;
	temp &= ~(FDI_LINK_TRAIN_AUTO | FDI_LINK_TRAIN_NONE_IVB);
	temp |= FDI_LINK_TRAIN_PATTERN_1_IVB;
	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	temp |= FDI_COMPOSITE_SYNC;
	FUNC8(reg, temp | FDI_TX_ENABLE);

	FUNC8(FUNC5(pipe),
		   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

	reg = FUNC2(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_AUTO;
	temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
	temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
	temp |= FDI_COMPOSITE_SYNC;
	FUNC8(reg, temp | FDI_RX_ENABLE);

	FUNC9(reg);
	FUNC11(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC6(pipe);
		temp = FUNC7(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC8(reg, temp);

		FUNC9(reg);
		FUNC11(500);

		reg = FUNC3(pipe);
		temp = FUNC7(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if (temp & FDI_RX_BIT_LOCK ||
		    (FUNC7(reg) & FDI_RX_BIT_LOCK)) {
			FUNC8(reg, temp | FDI_RX_BIT_LOCK);
			FUNC0("FDI train 1 done, level %i.\n", i);
			break;
		}
	}
	if (i == 4)
		FUNC1("FDI train 1 fail!\n");

	/* Train 2 */
	reg = FUNC6(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_NONE_IVB;
	temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	FUNC8(reg, temp);

	reg = FUNC2(pipe);
	temp = FUNC7(reg);
	temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
	temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
	FUNC8(reg, temp);

	FUNC9(reg);
	FUNC11(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC6(pipe);
		temp = FUNC7(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC8(reg, temp);

		FUNC9(reg);
		FUNC11(500);

		reg = FUNC3(pipe);
		temp = FUNC7(reg);
		FUNC0("FDI_RX_IIR 0x%x\n", temp);

		if (temp & FDI_RX_SYMBOL_LOCK) {
			FUNC8(reg, temp | FDI_RX_SYMBOL_LOCK);
			FUNC0("FDI train 2 done, level %i.\n", i);
			break;
		}
	}
	if (i == 4)
		FUNC1("FDI train 2 fail!\n");

	FUNC0("FDI train done.\n");
}