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
struct TYPE_2__ {int cloneable; int crtc_mask; int /*<<< orphan*/  base; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  enable; int /*<<< orphan*/  disable; int /*<<< orphan*/  type; } ;
struct intel_crt {scalar_t__ force_hotplug_required; TYPE_1__ base; int /*<<< orphan*/  adpa_reg; struct intel_connector* connector; } ;
struct drm_connector {int interlace_allowed; int /*<<< orphan*/  polled; scalar_t__ doublescan_allowed; } ;
struct intel_connector {int /*<<< orphan*/  get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int fdi_rx_config; int /*<<< orphan*/  hotplug_supported_mask; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA ; 
 int /*<<< orphan*/  CRT_HOTPLUG_INT_STATUS ; 
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_CONNECT ; 
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int FDI_RX_LINK_REVERSAL_OVERRIDE ; 
 int FDI_RX_POLARITY_REVERSED_LPT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_ANALOG ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  PCH_ADPA ; 
 int /*<<< orphan*/  VLV_ADPA ; 
 int /*<<< orphan*/  _FDI_RXA_CTL ; 
 int /*<<< orphan*/  crt_encoder_funcs ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_connector*,TYPE_1__*) ; 
 int /*<<< orphan*/  intel_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_crt_connector_funcs ; 
 int /*<<< orphan*/  intel_crt_connector_helper_funcs ; 
 int /*<<< orphan*/  intel_crt_enc_funcs ; 
 int /*<<< orphan*/  intel_crt_get_hw_state ; 
 int /*<<< orphan*/  intel_ddi_get_hw_state ; 
 int /*<<< orphan*/  intel_disable_crt ; 
 int /*<<< orphan*/  intel_enable_crt ; 
 int /*<<< orphan*/  intel_no_crt ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crt*) ; 
 void* FUNC16 (int,int /*<<< orphan*/ ) ; 

void FUNC17(struct drm_device *dev)
{
	struct drm_connector *connector;
	struct intel_crt *crt;
	struct intel_connector *intel_connector;
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* Skip machines without VGA that falsely report hotplug events */
	if (FUNC8(intel_no_crt))
		return;

	crt = FUNC16(sizeof(struct intel_crt), GFP_KERNEL);
	if (!crt)
		return;

	intel_connector = FUNC16(sizeof(struct intel_connector), GFP_KERNEL);
	if (!intel_connector) {
		FUNC15(crt);
		return;
	}

	connector = &intel_connector->base;
	crt->connector = intel_connector;
	FUNC10(dev, &intel_connector->base,
			   &intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);

	FUNC12(dev, &crt->base.base, &intel_crt_enc_funcs,
			 DRM_MODE_ENCODER_DAC);

	FUNC14(intel_connector, &crt->base);

	crt->base.type = INTEL_OUTPUT_ANALOG;
	crt->base.cloneable = true;
	if (FUNC6(dev))
		crt->base.crtc_mask = (1 << 0);
	else
		crt->base.crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);

	if (FUNC5(dev))
		connector->interlace_allowed = 0;
	else
		connector->interlace_allowed = 1;
	connector->doublescan_allowed = 0;

	if (FUNC2(dev))
		crt->adpa_reg = PCH_ADPA;
	else if (FUNC7(dev))
		crt->adpa_reg = VLV_ADPA;
	else
		crt->adpa_reg = ADPA;

	crt->base.disable = intel_disable_crt;
	crt->base.enable = intel_enable_crt;
	if (FUNC0(dev))
		crt->base.get_hw_state = intel_ddi_get_hw_state;
	else
		crt->base.get_hw_state = intel_crt_get_hw_state;
	intel_connector->get_hw_state = intel_connector_get_hw_state;

	FUNC11(&crt->base.base, &crt_encoder_funcs);
	FUNC9(connector, &intel_crt_connector_helper_funcs);

	FUNC13(connector);

	if (FUNC3(dev))
		connector->polled = DRM_CONNECTOR_POLL_HPD;
	else
		connector->polled = DRM_CONNECTOR_POLL_CONNECT;

	/*
	 * Configure the automatic hotplug detection stuff
	 */
	crt->force_hotplug_required = 0;

	dev_priv->hotplug_supported_mask |= CRT_HOTPLUG_INT_STATUS;

	/*
	 * TODO: find a proper way to discover whether we need to set the the
	 * polarity and link reversal bits or not, instead of relying on the
	 * BIOS.
	 */
	if (FUNC1(dev)) {
		u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
				 FDI_RX_LINK_REVERSAL_OVERRIDE;

		dev_priv->fdi_rx_config = FUNC4(_FDI_RXA_CTL) & fdi_config;
	}
}