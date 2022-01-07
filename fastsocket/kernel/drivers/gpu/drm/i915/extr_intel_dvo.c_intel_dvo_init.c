
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int subpixel_order; } ;
struct intel_encoder {int crtc_mask; int cloneable; int interlace_allowed; int doublescan_allowed; int base; TYPE_2__ display_info; int type; int get_hw_state; int enable; int disable; } ;
struct intel_dvo_device {int gpio; int type; TYPE_1__* dev_ops; } ;
struct intel_dvo {int panel_wants_dither; int panel_fixed_mode; struct intel_dvo_device dev; struct intel_encoder base; int get_hw_state; } ;
struct intel_connector {int panel_wants_dither; int panel_fixed_mode; struct intel_dvo_device dev; struct intel_encoder base; int get_hw_state; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {int crtc_mask; int cloneable; int interlace_allowed; int doublescan_allowed; int base; TYPE_2__ display_info; int type; int get_hw_state; int enable; int disable; } ;
struct TYPE_3__ {int (* init ) (struct intel_dvo_device*,struct i2c_adapter*) ;} ;


 int ARRAY_SIZE (struct intel_dvo_device*) ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_ENCODER_LVDS ;
 int DRM_MODE_ENCODER_NONE ;
 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int GMBUS_PORT_DPB ;
 int GMBUS_PORT_SSC ;


 int INTEL_OUTPUT_DVO ;
 int SubPixelHorizontalRGB ;
 int drm_connector_helper_add (struct intel_encoder*,int *) ;
 int drm_connector_init (struct drm_device*,struct intel_encoder*,int *,int ) ;
 int drm_encoder_cleanup (int *) ;
 int drm_encoder_helper_add (int *,int *) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int) ;
 int drm_sysfs_connector_add (struct intel_encoder*) ;
 int intel_connector_attach_encoder (struct intel_dvo*,struct intel_encoder*) ;
 int intel_disable_dvo ;
 int intel_dvo_connector_funcs ;
 int intel_dvo_connector_get_hw_state ;
 int intel_dvo_connector_helper_funcs ;
 struct intel_dvo_device* intel_dvo_devices ;
 int intel_dvo_enc_funcs ;
 int intel_dvo_get_current_mode (struct intel_encoder*) ;
 int intel_dvo_get_hw_state ;
 int intel_dvo_helper_funcs ;
 int intel_enable_dvo ;
 int intel_gmbus_force_bit (struct i2c_adapter*,int) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int) ;
 scalar_t__ intel_gmbus_is_port_valid (int) ;
 int kfree (struct intel_dvo*) ;
 struct intel_dvo* kzalloc (int,int ) ;
 int stub1 (struct intel_dvo_device*,struct i2c_adapter*) ;

void intel_dvo_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_encoder *intel_encoder;
 struct intel_dvo *intel_dvo;
 struct intel_connector *intel_connector;
 int i;
 int encoder_type = DRM_MODE_ENCODER_NONE;

 intel_dvo = kzalloc(sizeof(struct intel_dvo), GFP_KERNEL);
 if (!intel_dvo)
  return;

 intel_connector = kzalloc(sizeof(struct intel_connector), GFP_KERNEL);
 if (!intel_connector) {
  kfree(intel_dvo);
  return;
 }

 intel_encoder = &intel_dvo->base;
 drm_encoder_init(dev, &intel_encoder->base,
    &intel_dvo_enc_funcs, encoder_type);

 intel_encoder->disable = intel_disable_dvo;
 intel_encoder->enable = intel_enable_dvo;
 intel_encoder->get_hw_state = intel_dvo_get_hw_state;
 intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;


 for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
  struct drm_connector *connector = &intel_connector->base;
  const struct intel_dvo_device *dvo = &intel_dvo_devices[i];
  struct i2c_adapter *i2c;
  int gpio;
  bool dvoinit;





  if (intel_gmbus_is_port_valid(dvo->gpio))
   gpio = dvo->gpio;
  else if (dvo->type == 129)
   gpio = GMBUS_PORT_SSC;
  else
   gpio = GMBUS_PORT_DPB;





  i2c = intel_gmbus_get_adapter(dev_priv, gpio);

  intel_dvo->dev = *dvo;




  intel_gmbus_force_bit(i2c, 1);

  dvoinit = dvo->dev_ops->init(&intel_dvo->dev, i2c);

  intel_gmbus_force_bit(i2c, 0);

  if (!dvoinit)
   continue;

  intel_encoder->type = INTEL_OUTPUT_DVO;
  intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
  switch (dvo->type) {
  case 128:
   intel_encoder->cloneable = 1;
   drm_connector_init(dev, connector,
        &intel_dvo_connector_funcs,
        DRM_MODE_CONNECTOR_DVII);
   encoder_type = DRM_MODE_ENCODER_TMDS;
   break;
  case 129:
   intel_encoder->cloneable = 0;
   drm_connector_init(dev, connector,
        &intel_dvo_connector_funcs,
        DRM_MODE_CONNECTOR_LVDS);
   encoder_type = DRM_MODE_ENCODER_LVDS;
   break;
  }

  drm_connector_helper_add(connector,
      &intel_dvo_connector_helper_funcs);
  connector->display_info.subpixel_order = SubPixelHorizontalRGB;
  connector->interlace_allowed = 0;
  connector->doublescan_allowed = 0;

  drm_encoder_helper_add(&intel_encoder->base,
           &intel_dvo_helper_funcs);

  intel_connector_attach_encoder(intel_connector, intel_encoder);
  if (dvo->type == 129) {







   intel_dvo->panel_fixed_mode =
    intel_dvo_get_current_mode(connector);
   intel_dvo->panel_wants_dither = 1;
  }

  drm_sysfs_connector_add(connector);
  return;
 }

 drm_encoder_cleanup(&intel_encoder->base);
 kfree(intel_dvo);
 kfree(intel_connector);
}
