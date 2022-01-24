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
 int FDI_LINK_TRAIN_400MV_0DB_SNB_B ; 
 int FDI_LINK_TRAIN_NONE ; 
 int FDI_LINK_TRAIN_PATTERN_1 ; 
 int FDI_LINK_TRAIN_PATTERN_1_CPT ; 
 int FDI_LINK_TRAIN_PATTERN_2 ; 
 int FDI_LINK_TRAIN_PATTERN_2_CPT ; 
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
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int* snb_b_fdi_train_param ; 
 struct intel_crtc* FUNC12 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC12(crtc);
	int pipe = intel_crtc->pipe;
	u32 reg, temp, i, retry;

	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
	   for train result */
	reg = FUNC4(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_RX_SYMBOL_LOCK;
	temp &= ~FDI_RX_BIT_LOCK;
	FUNC9(reg, temp);

	FUNC11(reg);
	FUNC13(150);

	/* enable CPU FDI TX and PCH FDI RX */
	reg = FUNC6(pipe);
	temp = FUNC8(reg);
	temp &= ~(7 << 19);
	temp |= (intel_crtc->fdi_lanes - 1) << 19;
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_1;
	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
	/* SNB-B */
	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	FUNC9(reg, temp | FDI_TX_ENABLE);

	FUNC9(FUNC5(pipe),
		   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

	reg = FUNC2(pipe);
	temp = FUNC8(reg);
	if (FUNC7(dev)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_PATTERN_1;
	}
	FUNC9(reg, temp | FDI_RX_ENABLE);

	FUNC11(reg);
	FUNC13(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC6(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC9(reg, temp);

		FUNC11(reg);
		FUNC13(500);

		for (retry = 0; retry < 5; retry++) {
			reg = FUNC3(pipe);
			temp = FUNC8(reg);
			FUNC0("FDI_RX_IIR 0x%x\n", temp);
			if (temp & FDI_RX_BIT_LOCK) {
				FUNC9(reg, temp | FDI_RX_BIT_LOCK);
				FUNC0("FDI train 1 done.\n");
				break;
			}
			FUNC13(50);
		}
		if (retry < 5)
			break;
	}
	if (i == 4)
		FUNC1("FDI train 1 fail!\n");

	/* Train 2 */
	reg = FUNC6(pipe);
	temp = FUNC8(reg);
	temp &= ~FDI_LINK_TRAIN_NONE;
	temp |= FDI_LINK_TRAIN_PATTERN_2;
	if (FUNC10(dev)) {
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		/* SNB-B */
		temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
	}
	FUNC9(reg, temp);

	reg = FUNC2(pipe);
	temp = FUNC8(reg);
	if (FUNC7(dev)) {
		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
	} else {
		temp &= ~FDI_LINK_TRAIN_NONE;
		temp |= FDI_LINK_TRAIN_PATTERN_2;
	}
	FUNC9(reg, temp);

	FUNC11(reg);
	FUNC13(150);

	for (i = 0; i < 4; i++) {
		reg = FUNC6(pipe);
		temp = FUNC8(reg);
		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
		temp |= snb_b_fdi_train_param[i];
		FUNC9(reg, temp);

		FUNC11(reg);
		FUNC13(500);

		for (retry = 0; retry < 5; retry++) {
			reg = FUNC3(pipe);
			temp = FUNC8(reg);
			FUNC0("FDI_RX_IIR 0x%x\n", temp);
			if (temp & FDI_RX_SYMBOL_LOCK) {
				FUNC9(reg, temp | FDI_RX_SYMBOL_LOCK);
				FUNC0("FDI train 2 done.\n");
				break;
			}
			FUNC13(50);
		}
		if (retry < 5)
			break;
	}
	if (i == 4)
		FUNC1("FDI train 2 fail!\n");

	FUNC0("FDI train done.\n");
}