
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int intel_connector_update_modes (struct drm_connector*,struct edid*) ;
 struct edid* intel_crt_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 int kfree (struct edid*) ;

__attribute__((used)) static int intel_crt_ddc_get_modes(struct drm_connector *connector,
    struct i2c_adapter *adapter)
{
 struct edid *edid;
 int ret;

 edid = intel_crt_get_edid(connector, adapter);
 if (!edid)
  return 0;

 ret = intel_connector_update_modes(connector, edid);
 kfree(edid);

 return ret;
}
