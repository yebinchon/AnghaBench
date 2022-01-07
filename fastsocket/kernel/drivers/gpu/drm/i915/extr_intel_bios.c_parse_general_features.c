
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int fdi_rx_polarity_inverted; int display_clock_mode; int lvds_ssc_freq; int lvds_use_ssc; int int_crt_support; int int_tv_support; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct bdb_header {int dummy; } ;
struct bdb_general_features {int fdi_rx_polarity_inverted; int display_clock_mode; int ssc_freq; int enable_ssc; int int_crt_support; int int_tv_support; } ;


 int BDB_GENERAL_FEATURES ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ) ;
 struct bdb_general_features* find_section (struct bdb_header*,int ) ;
 int intel_bios_ssc_frequency (struct drm_device*,int ) ;

__attribute__((used)) static void
parse_general_features(struct drm_i915_private *dev_priv,
         struct bdb_header *bdb)
{
 struct drm_device *dev = dev_priv->dev;
 struct bdb_general_features *general;

 general = find_section(bdb, BDB_GENERAL_FEATURES);
 if (general) {
  dev_priv->int_tv_support = general->int_tv_support;
  dev_priv->int_crt_support = general->int_crt_support;
  dev_priv->lvds_use_ssc = general->enable_ssc;
  dev_priv->lvds_ssc_freq =
   intel_bios_ssc_frequency(dev, general->ssc_freq);
  dev_priv->display_clock_mode = general->display_clock_mode;
  dev_priv->fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
  DRM_DEBUG_KMS("BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
         dev_priv->int_tv_support,
         dev_priv->int_crt_support,
         dev_priv->lvds_use_ssc,
         dev_priv->lvds_ssc_freq,
         dev_priv->display_clock_mode,
         dev_priv->fdi_rx_polarity_inverted);
 }
}
