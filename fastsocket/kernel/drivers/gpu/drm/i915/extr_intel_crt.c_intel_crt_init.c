
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cloneable; int crtc_mask; int base; int get_hw_state; int enable; int disable; int type; } ;
struct intel_crt {scalar_t__ force_hotplug_required; TYPE_1__ base; int adpa_reg; struct intel_connector* connector; } ;
struct drm_connector {int interlace_allowed; int polled; scalar_t__ doublescan_allowed; } ;
struct intel_connector {int get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int fdi_rx_config; int hotplug_supported_mask; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int ADPA ;
 int CRT_HOTPLUG_INT_STATUS ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int FDI_RX_LINK_REVERSAL_OVERRIDE ;
 int FDI_RX_POLARITY_REVERSED_LPT ;
 int GFP_KERNEL ;
 scalar_t__ HAS_DDI (struct drm_device*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 scalar_t__ I915_HAS_HOTPLUG (struct drm_device*) ;
 int I915_READ (int ) ;
 int INTEL_OUTPUT_ANALOG ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_I830 (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int PCH_ADPA ;
 int VLV_ADPA ;
 int _FDI_RXA_CTL ;
 int crt_encoder_funcs ;
 scalar_t__ dmi_check_system (int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_helper_add (int *,int *) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int ) ;
 int drm_sysfs_connector_add (struct drm_connector*) ;
 int intel_connector_attach_encoder (struct intel_connector*,TYPE_1__*) ;
 int intel_connector_get_hw_state ;
 int intel_crt_connector_funcs ;
 int intel_crt_connector_helper_funcs ;
 int intel_crt_enc_funcs ;
 int intel_crt_get_hw_state ;
 int intel_ddi_get_hw_state ;
 int intel_disable_crt ;
 int intel_enable_crt ;
 int intel_no_crt ;
 int kfree (struct intel_crt*) ;
 void* kzalloc (int,int ) ;

void intel_crt_init(struct drm_device *dev)
{
 struct drm_connector *connector;
 struct intel_crt *crt;
 struct intel_connector *intel_connector;
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (dmi_check_system(intel_no_crt))
  return;

 crt = kzalloc(sizeof(struct intel_crt), GFP_KERNEL);
 if (!crt)
  return;

 intel_connector = kzalloc(sizeof(struct intel_connector), GFP_KERNEL);
 if (!intel_connector) {
  kfree(crt);
  return;
 }

 connector = &intel_connector->base;
 crt->connector = intel_connector;
 drm_connector_init(dev, &intel_connector->base,
      &intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);

 drm_encoder_init(dev, &crt->base.base, &intel_crt_enc_funcs,
    DRM_MODE_ENCODER_DAC);

 intel_connector_attach_encoder(intel_connector, &crt->base);

 crt->base.type = INTEL_OUTPUT_ANALOG;
 crt->base.cloneable = 1;
 if (IS_I830(dev))
  crt->base.crtc_mask = (1 << 0);
 else
  crt->base.crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);

 if (IS_GEN2(dev))
  connector->interlace_allowed = 0;
 else
  connector->interlace_allowed = 1;
 connector->doublescan_allowed = 0;

 if (HAS_PCH_SPLIT(dev))
  crt->adpa_reg = PCH_ADPA;
 else if (IS_VALLEYVIEW(dev))
  crt->adpa_reg = VLV_ADPA;
 else
  crt->adpa_reg = ADPA;

 crt->base.disable = intel_disable_crt;
 crt->base.enable = intel_enable_crt;
 if (HAS_DDI(dev))
  crt->base.get_hw_state = intel_ddi_get_hw_state;
 else
  crt->base.get_hw_state = intel_crt_get_hw_state;
 intel_connector->get_hw_state = intel_connector_get_hw_state;

 drm_encoder_helper_add(&crt->base.base, &crt_encoder_funcs);
 drm_connector_helper_add(connector, &intel_crt_connector_helper_funcs);

 drm_sysfs_connector_add(connector);

 if (I915_HAS_HOTPLUG(dev))
  connector->polled = DRM_CONNECTOR_POLL_HPD;
 else
  connector->polled = DRM_CONNECTOR_POLL_CONNECT;




 crt->force_hotplug_required = 0;

 dev_priv->hotplug_supported_mask |= CRT_HOTPLUG_INT_STATUS;






 if (HAS_PCH_LPT(dev)) {
  u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
     FDI_RX_LINK_REVERSAL_OVERRIDE;

  dev_priv->fdi_rx_config = I915_READ(_FDI_RXA_CTL) & fdi_config;
 }
}
