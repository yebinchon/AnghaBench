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
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_tv {TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int polled; } ;

/* Variables and functions */
 int DAC_A_0_7_V ; 
 int DAC_A_MASK ; 
 int DAC_B_0_7_V ; 
 int DAC_B_MASK ; 
 int DAC_CTL_OVERRIDE ; 
 int DAC_C_0_7_V ; 
 int DAC_C_MASK ; 
 int DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_CONNECTOR_Component ; 
 int DRM_MODE_CONNECTOR_Composite ; 
 int DRM_MODE_CONNECTOR_SVIDEO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int PIPE_HOTPLUG_INTERRUPT_ENABLE ; 
 int PIPE_HOTPLUG_TV_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TVDAC_A_SENSE ; 
 int TVDAC_A_SENSE_CTL ; 
 int TVDAC_B_SENSE ; 
 int TVDAC_B_SENSE_CTL ; 
 int TVDAC_C_SENSE ; 
 int TVDAC_C_SENSE_CTL ; 
 int TVDAC_SENSE_MASK ; 
 int TVDAC_STATE_CHG_EN ; 
 int /*<<< orphan*/  TV_CTL ; 
 int /*<<< orphan*/  TV_DAC ; 
 int TV_ENC_ENABLE ; 
 int TV_ENC_PIPEB_SELECT ; 
 int TV_TEST_MODE_MASK ; 
 int TV_TEST_MODE_MONITOR_DETECT ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct intel_crtc* FUNC10 (struct drm_crtc*) ; 

__attribute__((used)) static int
FUNC11(struct intel_tv *intel_tv,
		      struct drm_connector *connector)
{
	struct drm_encoder *encoder = &intel_tv->base.base;
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC10(crtc);
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	unsigned long irqflags;
	u32 tv_ctl, save_tv_ctl;
	u32 tv_dac, save_tv_dac;
	int type;

	/* Disable TV interrupts around load detect or we'll recurse */
	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
		FUNC8(&dev_priv->irq_lock, irqflags);
		FUNC5(dev_priv, 0,
				      PIPE_HOTPLUG_INTERRUPT_ENABLE |
				      PIPE_HOTPLUG_TV_INTERRUPT_ENABLE);
		FUNC9(&dev_priv->irq_lock, irqflags);
	}

	save_tv_dac = tv_dac = FUNC1(TV_DAC);
	save_tv_ctl = tv_ctl = FUNC1(TV_CTL);

	/* Poll for TV detection */
	tv_ctl &= ~(TV_ENC_ENABLE | TV_TEST_MODE_MASK);
	tv_ctl |= TV_TEST_MODE_MONITOR_DETECT;
	if (intel_crtc->pipe == 1)
		tv_ctl |= TV_ENC_PIPEB_SELECT;
	else
		tv_ctl &= ~TV_ENC_PIPEB_SELECT;

	tv_dac &= ~(TVDAC_SENSE_MASK | DAC_A_MASK | DAC_B_MASK | DAC_C_MASK);
	tv_dac |= (TVDAC_STATE_CHG_EN |
		   TVDAC_A_SENSE_CTL |
		   TVDAC_B_SENSE_CTL |
		   TVDAC_C_SENSE_CTL |
		   DAC_CTL_OVERRIDE |
		   DAC_A_0_7_V |
		   DAC_B_0_7_V |
		   DAC_C_0_7_V);


	/*
	 * The TV sense state should be cleared to zero on cantiga platform. Otherwise
	 * the TV is misdetected. This is hardware requirement.
	 */
	if (FUNC3(dev))
		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);

	FUNC2(TV_CTL, tv_ctl);
	FUNC2(TV_DAC, tv_dac);
	FUNC4(TV_DAC);

	FUNC7(intel_tv->base.base.dev,
			      FUNC10(intel_tv->base.base.crtc)->pipe);

	type = -1;
	tv_dac = FUNC1(TV_DAC);
	FUNC0("TV detected: %x, %x\n", tv_ctl, tv_dac);
	/*
	 *  A B C
	 *  0 1 1 Composite
	 *  1 0 X svideo
	 *  0 0 0 Component
	 */
	if ((tv_dac & TVDAC_SENSE_MASK) == (TVDAC_B_SENSE | TVDAC_C_SENSE)) {
		FUNC0("Detected Composite TV connection\n");
		type = DRM_MODE_CONNECTOR_Composite;
	} else if ((tv_dac & (TVDAC_A_SENSE|TVDAC_B_SENSE)) == TVDAC_A_SENSE) {
		FUNC0("Detected S-Video TV connection\n");
		type = DRM_MODE_CONNECTOR_SVIDEO;
	} else if ((tv_dac & TVDAC_SENSE_MASK) == 0) {
		FUNC0("Detected Component TV connection\n");
		type = DRM_MODE_CONNECTOR_Component;
	} else {
		FUNC0("Unrecognised TV connection\n");
		type = -1;
	}

	FUNC2(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
	FUNC2(TV_CTL, save_tv_ctl);
	FUNC4(TV_CTL);

	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
	FUNC7(intel_tv->base.base.dev,
			      FUNC10(intel_tv->base.base.crtc)->pipe);

	/* Restore interrupt config */
	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
		FUNC8(&dev_priv->irq_lock, irqflags);
		FUNC6(dev_priv, 0,
				     PIPE_HOTPLUG_INTERRUPT_ENABLE |
				     PIPE_HOTPLUG_TV_INTERRUPT_ENABLE);
		FUNC9(&dev_priv->irq_lock, irqflags);
	}

	return type;
}