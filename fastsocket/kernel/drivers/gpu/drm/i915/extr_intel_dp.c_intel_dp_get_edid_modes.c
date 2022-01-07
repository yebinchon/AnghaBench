
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {scalar_t__ edid; } ;
struct i2c_adapter {int dummy; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 int intel_connector_update_modes (struct drm_connector*,scalar_t__) ;
 int intel_ddc_get_modes (struct drm_connector*,struct i2c_adapter*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int
intel_dp_get_edid_modes(struct drm_connector *connector, struct i2c_adapter *adapter)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);


 if (intel_connector->edid) {

  if (IS_ERR(intel_connector->edid))
   return 0;

  return intel_connector_update_modes(connector,
          intel_connector->edid);
 }

 return intel_ddc_get_modes(connector, adapter);
}
