#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  subpixel_order; } ;
struct intel_encoder {int crtc_mask; int cloneable; int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  base; TYPE_2__ display_info; int /*<<< orphan*/  type; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  enable; int /*<<< orphan*/  disable; } ;
struct intel_dvo_device {int gpio; int type; TYPE_1__* dev_ops; } ;
struct intel_dvo {int panel_wants_dither; int /*<<< orphan*/  panel_fixed_mode; struct intel_dvo_device dev; struct intel_encoder base; int /*<<< orphan*/  get_hw_state; } ;
struct intel_connector {int panel_wants_dither; int /*<<< orphan*/  panel_fixed_mode; struct intel_dvo_device dev; struct intel_encoder base; int /*<<< orphan*/  get_hw_state; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {int crtc_mask; int cloneable; int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  base; TYPE_2__ display_info; int /*<<< orphan*/  type; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  enable; int /*<<< orphan*/  disable; } ;
struct TYPE_3__ {int (* init ) (struct intel_dvo_device*,struct i2c_adapter*) ;} ;

/* Variables and functions */
 int FUNC0 (struct intel_dvo_device*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVII ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int DRM_MODE_ENCODER_LVDS ; 
 int DRM_MODE_ENCODER_NONE ; 
 int DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GMBUS_PORT_DPB ; 
 int GMBUS_PORT_SSC ; 
#define  INTEL_DVO_CHIP_LVDS 129 
#define  INTEL_DVO_CHIP_TMDS 128 
 int /*<<< orphan*/  INTEL_OUTPUT_DVO ; 
 int /*<<< orphan*/  SubPixelHorizontalRGB ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct intel_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dvo*,struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_disable_dvo ; 
 int /*<<< orphan*/  intel_dvo_connector_funcs ; 
 int /*<<< orphan*/  intel_dvo_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_dvo_connector_helper_funcs ; 
 struct intel_dvo_device* intel_dvo_devices ; 
 int /*<<< orphan*/  intel_dvo_enc_funcs ; 
 int /*<<< orphan*/  FUNC8 (struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_dvo_get_hw_state ; 
 int /*<<< orphan*/  intel_dvo_helper_funcs ; 
 int /*<<< orphan*/  intel_enable_dvo ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int) ; 
 struct i2c_adapter* FUNC10 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_dvo*) ; 
 struct intel_dvo* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct intel_dvo_device*,struct i2c_adapter*) ; 

void FUNC15(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_encoder *intel_encoder;
	struct intel_dvo *intel_dvo;
	struct intel_connector *intel_connector;
	int i;
	int encoder_type = DRM_MODE_ENCODER_NONE;

	intel_dvo = FUNC13(sizeof(struct intel_dvo), GFP_KERNEL);
	if (!intel_dvo)
		return;

	intel_connector = FUNC13(sizeof(struct intel_connector), GFP_KERNEL);
	if (!intel_connector) {
		FUNC12(intel_dvo);
		return;
	}

	intel_encoder = &intel_dvo->base;
	FUNC5(dev, &intel_encoder->base,
			 &intel_dvo_enc_funcs, encoder_type);

	intel_encoder->disable = intel_disable_dvo;
	intel_encoder->enable = intel_enable_dvo;
	intel_encoder->get_hw_state = intel_dvo_get_hw_state;
	intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;

	/* Now, try to find a controller */
	for (i = 0; i < FUNC0(intel_dvo_devices); i++) {
		struct drm_connector *connector = &intel_connector->base;
		const struct intel_dvo_device *dvo = &intel_dvo_devices[i];
		struct i2c_adapter *i2c;
		int gpio;
		bool dvoinit;

		/* Allow the I2C driver info to specify the GPIO to be used in
		 * special cases, but otherwise default to what's defined
		 * in the spec.
		 */
		if (FUNC11(dvo->gpio))
			gpio = dvo->gpio;
		else if (dvo->type == INTEL_DVO_CHIP_LVDS)
			gpio = GMBUS_PORT_SSC;
		else
			gpio = GMBUS_PORT_DPB;

		/* Set up the I2C bus necessary for the chip we're probing.
		 * It appears that everything is on GPIOE except for panels
		 * on i830 laptops, which are on GPIOB (DVOA).
		 */
		i2c = FUNC10(dev_priv, gpio);

		intel_dvo->dev = *dvo;

		/* GMBUS NAK handling seems to be unstable, hence let the
		 * transmitter detection run in bit banging mode for now.
		 */
		FUNC9(i2c, true);

		dvoinit = dvo->dev_ops->init(&intel_dvo->dev, i2c);

		FUNC9(i2c, false);

		if (!dvoinit)
			continue;

		intel_encoder->type = INTEL_OUTPUT_DVO;
		intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
		switch (dvo->type) {
		case INTEL_DVO_CHIP_TMDS:
			intel_encoder->cloneable = true;
			FUNC2(dev, connector,
					   &intel_dvo_connector_funcs,
					   DRM_MODE_CONNECTOR_DVII);
			encoder_type = DRM_MODE_ENCODER_TMDS;
			break;
		case INTEL_DVO_CHIP_LVDS:
			intel_encoder->cloneable = false;
			FUNC2(dev, connector,
					   &intel_dvo_connector_funcs,
					   DRM_MODE_CONNECTOR_LVDS);
			encoder_type = DRM_MODE_ENCODER_LVDS;
			break;
		}

		FUNC1(connector,
					 &intel_dvo_connector_helper_funcs);
		connector->display_info.subpixel_order = SubPixelHorizontalRGB;
		connector->interlace_allowed = false;
		connector->doublescan_allowed = false;

		FUNC4(&intel_encoder->base,
				       &intel_dvo_helper_funcs);

		FUNC7(intel_connector, intel_encoder);
		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
			/* For our LVDS chipsets, we should hopefully be able
			 * to dig the fixed panel mode out of the BIOS data.
			 * However, it's in a different format from the BIOS
			 * data on chipsets with integrated LVDS (stored in AIM
			 * headers, likely), so for now, just get the current
			 * mode being output through DVO.
			 */
			intel_dvo->panel_fixed_mode =
				FUNC8(connector);
			intel_dvo->panel_wants_dither = true;
		}

		FUNC6(connector);
		return;
	}

	FUNC3(&intel_encoder->base);
	FUNC12(intel_dvo);
	FUNC12(intel_connector);
}