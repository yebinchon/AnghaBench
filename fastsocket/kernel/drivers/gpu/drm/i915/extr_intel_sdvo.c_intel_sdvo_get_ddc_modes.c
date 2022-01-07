
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_mode_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 scalar_t__ intel_sdvo_connector_matches_edid (int ,struct edid*) ;
 struct edid* intel_sdvo_get_analog_edid (struct drm_connector*) ;
 struct edid* intel_sdvo_get_edid (struct drm_connector*) ;
 int kfree (struct edid*) ;
 int to_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static void intel_sdvo_get_ddc_modes(struct drm_connector *connector)
{
 struct edid *edid;


 edid = intel_sdvo_get_edid(connector);







 if (edid == ((void*)0))
  edid = intel_sdvo_get_analog_edid(connector);

 if (edid != ((void*)0)) {
  if (intel_sdvo_connector_matches_edid(to_intel_sdvo_connector(connector),
            edid)) {
   drm_mode_connector_update_edid_property(connector, edid);
   drm_add_edid_modes(connector, edid);
  }

  kfree(edid);
 }
}
