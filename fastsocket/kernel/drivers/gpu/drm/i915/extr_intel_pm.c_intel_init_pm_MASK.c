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
struct TYPE_2__ {void* get_fifo_size; void* init_clock_gating; int /*<<< orphan*/ * update_wm; int /*<<< orphan*/  update_linetime_wm; void* update_sprite_wm; int /*<<< orphan*/  disable_fbc; int /*<<< orphan*/  enable_fbc; int /*<<< orphan*/  fbc_enabled; } ;
struct drm_i915_private {int is_ddr3; TYPE_1__ display; int /*<<< orphan*/  mem_freq; int /*<<< orphan*/  fsb_freq; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int ILK_SRLT_MASK ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 
 scalar_t__ FUNC11 (struct drm_device*) ; 
 scalar_t__ FUNC12 (struct drm_device*) ; 
 scalar_t__ FUNC13 (struct drm_device*) ; 
 scalar_t__ FUNC14 (struct drm_device*) ; 
 scalar_t__ FUNC15 (struct drm_device*) ; 
 scalar_t__ FUNC16 (struct drm_device*) ; 
 scalar_t__ FUNC17 (struct drm_device*) ; 
 scalar_t__ FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 
 scalar_t__ FUNC20 (struct drm_device*) ; 
 int /*<<< orphan*/  MLTR_ILK ; 
 scalar_t__ FUNC21 () ; 
 void* broadwater_init_clock_gating ; 
 void* crestline_init_clock_gating ; 
 int /*<<< orphan*/  g4x_disable_fbc ; 
 int /*<<< orphan*/  g4x_enable_fbc ; 
 int /*<<< orphan*/  g4x_fbc_enabled ; 
 void* g4x_init_clock_gating ; 
 int /*<<< orphan*/ * g4x_update_wm ; 
 void* gen3_init_clock_gating ; 
 void* gen6_init_clock_gating ; 
 void* haswell_init_clock_gating ; 
 int /*<<< orphan*/  haswell_update_linetime_wm ; 
 void* i830_get_fifo_size ; 
 void* i830_init_clock_gating ; 
 void* i830_update_wm ; 
 void* i845_get_fifo_size ; 
 void* i85x_get_fifo_size ; 
 void* i85x_init_clock_gating ; 
 int /*<<< orphan*/  i8xx_disable_fbc ; 
 int /*<<< orphan*/  i8xx_enable_fbc ; 
 int /*<<< orphan*/  i8xx_fbc_enabled ; 
 int /*<<< orphan*/  FUNC22 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_device*) ; 
 int /*<<< orphan*/ * i965_update_wm ; 
 void* i9xx_get_fifo_size ; 
 void* i9xx_update_wm ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ironlake_disable_fbc ; 
 int /*<<< orphan*/  ironlake_enable_fbc ; 
 int /*<<< orphan*/  ironlake_fbc_enabled ; 
 void* ironlake_init_clock_gating ; 
 int /*<<< orphan*/ * ironlake_update_wm ; 
 void* ivybridge_init_clock_gating ; 
 int /*<<< orphan*/ * ivybridge_update_wm ; 
 int /*<<< orphan*/  FUNC25 (struct drm_device*) ; 
 int /*<<< orphan*/ * pineview_update_wm ; 
 void* sandybridge_update_sprite_wm ; 
 void* sandybridge_update_wm ; 
 void* valleyview_init_clock_gating ; 
 int /*<<< orphan*/ * valleyview_update_wm ; 

void FUNC26(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (FUNC3(dev)) {
		if (FUNC2(dev)) {
			dev_priv->display.fbc_enabled = ironlake_fbc_enabled;
			dev_priv->display.enable_fbc = ironlake_enable_fbc;
			dev_priv->display.disable_fbc = ironlake_disable_fbc;
		} else if (FUNC13(dev)) {
			dev_priv->display.fbc_enabled = g4x_fbc_enabled;
			dev_priv->display.enable_fbc = g4x_enable_fbc;
			dev_priv->display.disable_fbc = g4x_disable_fbc;
		} else if (FUNC7(dev)) {
			dev_priv->display.fbc_enabled = i8xx_fbc_enabled;
			dev_priv->display.enable_fbc = i8xx_enable_fbc;
			dev_priv->display.disable_fbc = i8xx_disable_fbc;
		}
		/* 855GM needs testing */
	}

	/* For cxsr */
	if (FUNC18(dev))
		FUNC23(dev);
	else if (FUNC11(dev))
		FUNC22(dev);

	/* For FIFO watermark updates */
	if (FUNC2(dev)) {
		if (FUNC11(dev)) {
			if (FUNC4(MLTR_ILK) & ILK_SRLT_MASK)
				dev_priv->display.update_wm = ironlake_update_wm;
			else {
				FUNC0("Failed to get proper latency. "
					      "Disable CxSR\n");
				dev_priv->display.update_wm = NULL;
			}
			dev_priv->display.init_clock_gating = ironlake_init_clock_gating;
		} else if (FUNC12(dev)) {
			if (FUNC21()) {
				dev_priv->display.update_wm = sandybridge_update_wm;
				dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
			} else {
				FUNC0("Failed to read display plane latency. "
					      "Disable CxSR\n");
				dev_priv->display.update_wm = NULL;
			}
			dev_priv->display.init_clock_gating = gen6_init_clock_gating;
		} else if (FUNC17(dev)) {
			/* FIXME: detect B0+ stepping and use auto training */
			if (FUNC21()) {
				dev_priv->display.update_wm = ivybridge_update_wm;
				dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
			} else {
				FUNC0("Failed to read display plane latency. "
					      "Disable CxSR\n");
				dev_priv->display.update_wm = NULL;
			}
			dev_priv->display.init_clock_gating = ivybridge_init_clock_gating;
		} else if (FUNC14(dev)) {
			if (FUNC21()) {
				dev_priv->display.update_wm = sandybridge_update_wm;
				dev_priv->display.update_sprite_wm = sandybridge_update_sprite_wm;
				dev_priv->display.update_linetime_wm = haswell_update_linetime_wm;
			} else {
				FUNC0("Failed to read display plane latency. "
					      "Disable CxSR\n");
				dev_priv->display.update_wm = NULL;
			}
			dev_priv->display.init_clock_gating = haswell_init_clock_gating;
		} else
			dev_priv->display.update_wm = NULL;
	} else if (FUNC20(dev)) {
		dev_priv->display.update_wm = valleyview_update_wm;
		dev_priv->display.init_clock_gating =
			valleyview_init_clock_gating;
	} else if (FUNC18(dev)) {
		if (!FUNC24(FUNC19(dev),
					    dev_priv->is_ddr3,
					    dev_priv->fsb_freq,
					    dev_priv->mem_freq)) {
			FUNC1("failed to find known CxSR latency "
				 "(found ddr%s fsb freq %d, mem freq %d), "
				 "disabling CxSR\n",
				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
				 dev_priv->fsb_freq, dev_priv->mem_freq);
			/* Disable CxSR and never update its watermark again */
			FUNC25(dev);
			dev_priv->display.update_wm = NULL;
		} else
			dev_priv->display.update_wm = pineview_update_wm;
		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
	} else if (FUNC8(dev)) {
		dev_priv->display.update_wm = g4x_update_wm;
		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
	} else if (FUNC10(dev)) {
		dev_priv->display.update_wm = i965_update_wm;
		if (FUNC7(dev))
			dev_priv->display.init_clock_gating = crestline_init_clock_gating;
		else if (FUNC6(dev))
			dev_priv->display.init_clock_gating = broadwater_init_clock_gating;
	} else if (FUNC9(dev)) {
		dev_priv->display.update_wm = i9xx_update_wm;
		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
	} else if (FUNC16(dev)) {
		dev_priv->display.update_wm = i830_update_wm;
		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
		dev_priv->display.get_fifo_size = i830_get_fifo_size;
	} else if (FUNC15(dev)) {
		dev_priv->display.update_wm = i9xx_update_wm;
		dev_priv->display.get_fifo_size = i85x_get_fifo_size;
		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
	} else {
		dev_priv->display.update_wm = i830_update_wm;
		dev_priv->display.init_clock_gating = i830_init_clock_gating;
		if (FUNC5(dev))
			dev_priv->display.get_fifo_size = i845_get_fifo_size;
		else
			dev_priv->display.get_fifo_size = i830_get_fifo_size;
	}
}