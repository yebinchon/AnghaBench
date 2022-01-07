
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct intel_sdvo_connector {int output_flag; } ;
struct TYPE_2__ {int needs_tv_clock; } ;
struct intel_sdvo {int attached_output; int has_hdmi_monitor; int has_hdmi_audio; int rgb_quant_range_selectable; int is_tv; int is_lvds; int * sdvo_lvds_fixed_mode; TYPE_1__ base; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_DEBUG_KMS (char*,int,int,int) ;
 scalar_t__ IS_TMDS (struct intel_sdvo_connector*) ;
 int SDVO_CMD_GET_ATTACHED_DISPLAYS ;
 int SDVO_LVDS_MASK ;
 int SDVO_TV_MASK ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 scalar_t__ intel_sdvo_connector_matches_edid (struct intel_sdvo_connector*,struct edid*) ;
 struct edid* intel_sdvo_get_analog_edid (struct drm_connector*) ;
 struct edid* intel_sdvo_get_edid (struct drm_connector*) ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,int*,int) ;
 int intel_sdvo_tmds_sink_detect (struct drm_connector*) ;
 int kfree (struct edid*) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
intel_sdvo_detect(struct drm_connector *connector, bool force)
{
 uint16_t response;
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(connector);
 struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);
 enum drm_connector_status ret;

 if (!intel_sdvo_get_value(intel_sdvo,
      SDVO_CMD_GET_ATTACHED_DISPLAYS,
      &response, 2))
  return connector_status_unknown;

 DRM_DEBUG_KMS("SDVO response %d %d [%x]\n",
        response & 0xff, response >> 8,
        intel_sdvo_connector->output_flag);

 if (response == 0)
  return connector_status_disconnected;

 intel_sdvo->attached_output = response;

 intel_sdvo->has_hdmi_monitor = 0;
 intel_sdvo->has_hdmi_audio = 0;
 intel_sdvo->rgb_quant_range_selectable = 0;

 if ((intel_sdvo_connector->output_flag & response) == 0)
  ret = connector_status_disconnected;
 else if (IS_TMDS(intel_sdvo_connector))
  ret = intel_sdvo_tmds_sink_detect(connector);
 else {
  struct edid *edid;


  edid = intel_sdvo_get_edid(connector);
  if (edid == ((void*)0))
   edid = intel_sdvo_get_analog_edid(connector);
  if (edid != ((void*)0)) {
   if (intel_sdvo_connector_matches_edid(intel_sdvo_connector,
             edid))
    ret = connector_status_connected;
   else
    ret = connector_status_disconnected;

   kfree(edid);
  } else
   ret = connector_status_connected;
 }


 if (ret == connector_status_connected) {
  intel_sdvo->is_tv = 0;
  intel_sdvo->is_lvds = 0;
  intel_sdvo->base.needs_tv_clock = 0;

  if (response & SDVO_TV_MASK) {
   intel_sdvo->is_tv = 1;
   intel_sdvo->base.needs_tv_clock = 1;
  }
  if (response & SDVO_LVDS_MASK)
   intel_sdvo->is_lvds = intel_sdvo->sdvo_lvds_fixed_mode != ((void*)0);
 }

 return ret;
}
