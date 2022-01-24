#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int possible_crtcs; int possible_clones; } ;
struct intel_encoder {int type; int crtc_mask; int cloneable; TYPE_3__ base; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; } ;
struct intel_tv {int* margin; scalar_t__ tv_format; int /*<<< orphan*/  type; struct intel_encoder base; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  base; int /*<<< orphan*/  polled; } ;
struct intel_connector {int /*<<< orphan*/  get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int /*<<< orphan*/  int_tv_support; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_bottom_margin_property; int /*<<< orphan*/  tv_right_margin_property; int /*<<< orphan*/  tv_top_margin_property; int /*<<< orphan*/  tv_left_margin_property; int /*<<< orphan*/  tv_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_CONNECT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_SVIDEO ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Unknown ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TVDAC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int INTEL_OUTPUT_TVOUT ; 
 int TVDAC_STATE_CHG_EN ; 
 int /*<<< orphan*/  TV_CTL ; 
 int /*<<< orphan*/  TV_DAC ; 
 int TV_FUSE_STATE_DISABLED ; 
 int TV_FUSE_STATE_MASK ; 
 size_t TV_MARGIN_BOTTOM ; 
 size_t TV_MARGIN_LEFT ; 
 size_t TV_MARGIN_RIGHT ; 
 size_t TV_MARGIN_TOP ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_connector*,struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_disable_tv ; 
 int /*<<< orphan*/  intel_enable_tv ; 
 int /*<<< orphan*/  intel_tv_connector_funcs ; 
 int /*<<< orphan*/  intel_tv_connector_helper_funcs ; 
 int /*<<< orphan*/  intel_tv_enc_funcs ; 
 int /*<<< orphan*/  intel_tv_get_hw_state ; 
 int /*<<< orphan*/  intel_tv_helper_funcs ; 
 int /*<<< orphan*/  FUNC12 (struct intel_tv*) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 TYPE_2__* tv_modes ; 

void
FUNC15(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_connector *connector;
	struct intel_tv *intel_tv;
	struct intel_encoder *intel_encoder;
	struct intel_connector *intel_connector;
	u32 tv_dac_on, tv_dac_off, save_tv_dac;
	char *tv_format_names[FUNC0(tv_modes)];
	int i, initial_mode = 0;

	if ((FUNC2(TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
		return;

	if (!FUNC14(dev)) {
		FUNC1("Integrated TV is not present.\n");
		return;
	}
	/* Even if we have an encoder we may not have a connector */
	if (!dev_priv->int_tv_support)
		return;

	/*
	 * Sanity check the TV output by checking to see if the
	 * DAC register holds a value
	 */
	save_tv_dac = FUNC2(TV_DAC);

	FUNC3(TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
	tv_dac_on = FUNC2(TV_DAC);

	FUNC3(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
	tv_dac_off = FUNC2(TV_DAC);

	FUNC3(TV_DAC, save_tv_dac);

	/*
	 * If the register does not hold the state change enable
	 * bit, (either as a 0 or a 1), assume it doesn't really
	 * exist
	 */
	if ((tv_dac_on & TVDAC_STATE_CHG_EN) == 0 ||
	    (tv_dac_off & TVDAC_STATE_CHG_EN) != 0)
		return;

	intel_tv = FUNC13(sizeof(struct intel_tv), GFP_KERNEL);
	if (!intel_tv) {
		return;
	}

	intel_connector = FUNC13(sizeof(struct intel_connector), GFP_KERNEL);
	if (!intel_connector) {
		FUNC12(intel_tv);
		return;
	}

	intel_encoder = &intel_tv->base;
	connector = &intel_connector->base;

	/* The documentation, for the older chipsets at least, recommend
	 * using a polling method rather than hotplug detection for TVs.
	 * This is because in order to perform the hotplug detection, the PLLs
	 * for the TV must be kept alive increasing power drain and starving
	 * bandwidth from other encoders. Notably for instance, it causes
	 * pipe underruns on Crestline when this encoder is supposedly idle.
	 *
	 * More recent chipsets favour HDMI rather than integrated S-Video.
	 */
	connector->polled = DRM_CONNECTOR_POLL_CONNECT;

	FUNC5(dev, connector, &intel_tv_connector_funcs,
			   DRM_MODE_CONNECTOR_SVIDEO);

	FUNC7(dev, &intel_encoder->base, &intel_tv_enc_funcs,
			 DRM_MODE_ENCODER_TVDAC);

	intel_encoder->enable = intel_enable_tv;
	intel_encoder->disable = intel_disable_tv;
	intel_encoder->get_hw_state = intel_tv_get_hw_state;
	intel_connector->get_hw_state = intel_connector_get_hw_state;

	FUNC11(intel_connector, intel_encoder);
	intel_encoder->type = INTEL_OUTPUT_TVOUT;
	intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
	intel_encoder->cloneable = false;
	intel_encoder->base.possible_crtcs = ((1 << 0) | (1 << 1));
	intel_encoder->base.possible_clones = (1 << INTEL_OUTPUT_TVOUT);
	intel_tv->type = DRM_MODE_CONNECTOR_Unknown;

	/* BIOS margin values */
	intel_tv->margin[TV_MARGIN_LEFT] = 54;
	intel_tv->margin[TV_MARGIN_TOP] = 36;
	intel_tv->margin[TV_MARGIN_RIGHT] = 46;
	intel_tv->margin[TV_MARGIN_BOTTOM] = 37;

	intel_tv->tv_format = tv_modes[initial_mode].name;

	FUNC6(&intel_encoder->base, &intel_tv_helper_funcs);
	FUNC4(connector, &intel_tv_connector_helper_funcs);
	connector->interlace_allowed = false;
	connector->doublescan_allowed = false;

	/* Create TV properties then attach current values */
	for (i = 0; i < FUNC0(tv_modes); i++)
		tv_format_names[i] = (char *)tv_modes[i].name;
	FUNC8(dev,
				      FUNC0(tv_modes),
				      tv_format_names);

	FUNC9(&connector->base, dev->mode_config.tv_mode_property,
				   initial_mode);
	FUNC9(&connector->base,
				   dev->mode_config.tv_left_margin_property,
				   intel_tv->margin[TV_MARGIN_LEFT]);
	FUNC9(&connector->base,
				   dev->mode_config.tv_top_margin_property,
				   intel_tv->margin[TV_MARGIN_TOP]);
	FUNC9(&connector->base,
				   dev->mode_config.tv_right_margin_property,
				   intel_tv->margin[TV_MARGIN_RIGHT]);
	FUNC9(&connector->base,
				   dev->mode_config.tv_bottom_margin_property,
				   intel_tv->margin[TV_MARGIN_BOTTOM]);
	FUNC10(connector);
}