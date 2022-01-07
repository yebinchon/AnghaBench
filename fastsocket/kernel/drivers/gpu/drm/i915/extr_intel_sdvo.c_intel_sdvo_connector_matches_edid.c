
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_connector {int dummy; } ;
struct edid {int input; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int DRM_EDID_INPUT_DIGITAL ;
 int IS_DIGITAL (struct intel_sdvo_connector*) ;

__attribute__((used)) static bool
intel_sdvo_connector_matches_edid(struct intel_sdvo_connector *sdvo,
      struct edid *edid)
{
 bool monitor_is_digital = !!(edid->input & DRM_EDID_INPUT_DIGITAL);
 bool connector_is_digital = !!IS_DIGITAL(sdvo);

 DRM_DEBUG_KMS("connector_is_digital? %d, monitor_is_digital? %d\n",
        connector_is_digital, monitor_is_digital);
 return connector_is_digital == monitor_is_digital;
}
