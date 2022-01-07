
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_edid_to_eld (struct drm_connector*,struct edid*) ;
 int drm_mode_connector_update_edid_property (struct drm_connector*,struct edid*) ;

int intel_connector_update_modes(struct drm_connector *connector,
    struct edid *edid)
{
 int ret;

 drm_mode_connector_update_edid_property(connector, edid);
 ret = drm_add_edid_modes(connector, edid);
 drm_edid_to_eld(connector, edid);

 return ret;
}
