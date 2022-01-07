
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int support; } ;
struct drm_i915_private {int render_reclock_avail; TYPE_1__ edp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct bdb_header {int dummy; } ;
struct bdb_driver_features {scalar_t__ lvds_config; scalar_t__ dual_frequency; } ;


 int BDB_DRIVER_FEATURES ;
 scalar_t__ BDB_DRIVER_FEATURE_EDP ;
 scalar_t__ SUPPORTS_EDP (struct drm_device*) ;
 struct bdb_driver_features* find_section (struct bdb_header*,int ) ;

__attribute__((used)) static void
parse_driver_features(struct drm_i915_private *dev_priv,
         struct bdb_header *bdb)
{
 struct drm_device *dev = dev_priv->dev;
 struct bdb_driver_features *driver;

 driver = find_section(bdb, BDB_DRIVER_FEATURES);
 if (!driver)
  return;

 if (SUPPORTS_EDP(dev) &&
     driver->lvds_config == BDB_DRIVER_FEATURE_EDP)
  dev_priv->edp.support = 1;

 if (driver->dual_frequency)
  dev_priv->render_reclock_avail = 1;
}
