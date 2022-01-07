
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int possible_crtcs; int possible_clones; } ;
struct intel_encoder {int type; int crtc_mask; int cloneable; TYPE_3__ base; int get_hw_state; int disable; int enable; } ;
struct intel_tv {int* margin; scalar_t__ tv_format; int type; struct intel_encoder base; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int base; int polled; } ;
struct intel_connector {int get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int int_tv_support; } ;
struct TYPE_6__ {int tv_bottom_margin_property; int tv_right_margin_property; int tv_top_margin_property; int tv_left_margin_property; int tv_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {scalar_t__ name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_ENCODER_TVDAC ;
 int GFP_KERNEL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_TVOUT ;
 int TVDAC_STATE_CHG_EN ;
 int TV_CTL ;
 int TV_DAC ;
 int TV_FUSE_STATE_DISABLED ;
 int TV_FUSE_STATE_MASK ;
 size_t TV_MARGIN_BOTTOM ;
 size_t TV_MARGIN_LEFT ;
 size_t TV_MARGIN_RIGHT ;
 size_t TV_MARGIN_TOP ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_helper_add (TYPE_3__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_3__*,int *,int ) ;
 int drm_mode_create_tv_properties (struct drm_device*,int,char**) ;
 int drm_object_attach_property (int *,int ,int) ;
 int drm_sysfs_connector_add (struct drm_connector*) ;
 int intel_connector_attach_encoder (struct intel_connector*,struct intel_encoder*) ;
 int intel_connector_get_hw_state ;
 int intel_disable_tv ;
 int intel_enable_tv ;
 int intel_tv_connector_funcs ;
 int intel_tv_connector_helper_funcs ;
 int intel_tv_enc_funcs ;
 int intel_tv_get_hw_state ;
 int intel_tv_helper_funcs ;
 int kfree (struct intel_tv*) ;
 void* kzalloc (int,int ) ;
 int tv_is_present_in_vbt (struct drm_device*) ;
 TYPE_2__* tv_modes ;

void
intel_tv_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_connector *connector;
 struct intel_tv *intel_tv;
 struct intel_encoder *intel_encoder;
 struct intel_connector *intel_connector;
 u32 tv_dac_on, tv_dac_off, save_tv_dac;
 char *tv_format_names[ARRAY_SIZE(tv_modes)];
 int i, initial_mode = 0;

 if ((I915_READ(TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
  return;

 if (!tv_is_present_in_vbt(dev)) {
  DRM_DEBUG_KMS("Integrated TV is not present.\n");
  return;
 }

 if (!dev_priv->int_tv_support)
  return;





 save_tv_dac = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
 tv_dac_on = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
 tv_dac_off = I915_READ(TV_DAC);

 I915_WRITE(TV_DAC, save_tv_dac);






 if ((tv_dac_on & TVDAC_STATE_CHG_EN) == 0 ||
     (tv_dac_off & TVDAC_STATE_CHG_EN) != 0)
  return;

 intel_tv = kzalloc(sizeof(struct intel_tv), GFP_KERNEL);
 if (!intel_tv) {
  return;
 }

 intel_connector = kzalloc(sizeof(struct intel_connector), GFP_KERNEL);
 if (!intel_connector) {
  kfree(intel_tv);
  return;
 }

 intel_encoder = &intel_tv->base;
 connector = &intel_connector->base;
 connector->polled = DRM_CONNECTOR_POLL_CONNECT;

 drm_connector_init(dev, connector, &intel_tv_connector_funcs,
      DRM_MODE_CONNECTOR_SVIDEO);

 drm_encoder_init(dev, &intel_encoder->base, &intel_tv_enc_funcs,
    DRM_MODE_ENCODER_TVDAC);

 intel_encoder->enable = intel_enable_tv;
 intel_encoder->disable = intel_disable_tv;
 intel_encoder->get_hw_state = intel_tv_get_hw_state;
 intel_connector->get_hw_state = intel_connector_get_hw_state;

 intel_connector_attach_encoder(intel_connector, intel_encoder);
 intel_encoder->type = INTEL_OUTPUT_TVOUT;
 intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
 intel_encoder->cloneable = 0;
 intel_encoder->base.possible_crtcs = ((1 << 0) | (1 << 1));
 intel_encoder->base.possible_clones = (1 << INTEL_OUTPUT_TVOUT);
 intel_tv->type = DRM_MODE_CONNECTOR_Unknown;


 intel_tv->margin[TV_MARGIN_LEFT] = 54;
 intel_tv->margin[TV_MARGIN_TOP] = 36;
 intel_tv->margin[TV_MARGIN_RIGHT] = 46;
 intel_tv->margin[TV_MARGIN_BOTTOM] = 37;

 intel_tv->tv_format = tv_modes[initial_mode].name;

 drm_encoder_helper_add(&intel_encoder->base, &intel_tv_helper_funcs);
 drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;


 for (i = 0; i < ARRAY_SIZE(tv_modes); i++)
  tv_format_names[i] = (char *)tv_modes[i].name;
 drm_mode_create_tv_properties(dev,
          ARRAY_SIZE(tv_modes),
          tv_format_names);

 drm_object_attach_property(&connector->base, dev->mode_config.tv_mode_property,
       initial_mode);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_left_margin_property,
       intel_tv->margin[TV_MARGIN_LEFT]);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_top_margin_property,
       intel_tv->margin[TV_MARGIN_TOP]);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_right_margin_property,
       intel_tv->margin[TV_MARGIN_RIGHT]);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_bottom_margin_property,
       intel_tv->margin[TV_MARGIN_BOTTOM]);
 drm_sysfs_connector_add(connector);
}
