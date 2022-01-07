
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int lvds_dither; int int_tv_support; int int_crt_support; int lvds_use_ssc; int lvds_ssc_freq; int * sdvo_lvds_vbt_mode; scalar_t__ lvds_vbt; int crt_ddc_pin; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int GMBUS_PORT_VGADDC ;
 int intel_bios_ssc_frequency (struct drm_device*,int) ;

__attribute__((used)) static void
init_vbt_defaults(struct drm_i915_private *dev_priv)
{
 struct drm_device *dev = dev_priv->dev;

 dev_priv->crt_ddc_pin = GMBUS_PORT_VGADDC;


 dev_priv->lvds_dither = 1;
 dev_priv->lvds_vbt = 0;


 dev_priv->sdvo_lvds_vbt_mode = ((void*)0);


 dev_priv->int_tv_support = 1;
 dev_priv->int_crt_support = 1;


 dev_priv->lvds_use_ssc = 1;
 dev_priv->lvds_ssc_freq = intel_bios_ssc_frequency(dev, 1);
 DRM_DEBUG_KMS("Set default to SSC at %dMHz\n", dev_priv->lvds_ssc_freq);
}
