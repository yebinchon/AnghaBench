
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ drm_do_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 scalar_t__ drm_probe_ddc (struct i2c_adapter*) ;

struct edid *drm_get_edid(struct drm_connector *connector,
     struct i2c_adapter *adapter)
{
 struct edid *edid = ((void*)0);

 if (drm_probe_ddc(adapter))
  edid = (struct edid *)drm_do_get_edid(connector, adapter);

 return edid;
}
