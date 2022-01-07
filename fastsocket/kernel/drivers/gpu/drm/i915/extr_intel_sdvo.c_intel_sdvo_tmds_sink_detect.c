
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo_connector {scalar_t__ force_audio; } ;
struct intel_sdvo {int ddc_bus; int has_hdmi_audio; int rgb_quant_range_selectable; int has_hdmi_monitor; scalar_t__ is_hdmi; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_EDID_INPUT_DIGITAL ;
 scalar_t__ HDMI_AUDIO_AUTO ;
 scalar_t__ HDMI_AUDIO_ON ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 int drm_rgb_quant_range_selectable (struct edid*) ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 struct edid* intel_sdvo_get_analog_edid (struct drm_connector*) ;
 struct edid* intel_sdvo_get_edid (struct drm_connector*) ;
 scalar_t__ intel_sdvo_multifunc_encoder (struct intel_sdvo*) ;
 int kfree (struct edid*) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
{
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(connector);
 enum drm_connector_status status;
 struct edid *edid;

 edid = intel_sdvo_get_edid(connector);

 if (edid == ((void*)0) && intel_sdvo_multifunc_encoder(intel_sdvo)) {
  u8 ddc, saved_ddc = intel_sdvo->ddc_bus;





  for (ddc = intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
   intel_sdvo->ddc_bus = ddc;
   edid = intel_sdvo_get_edid(connector);
   if (edid)
    break;
  }




  if (edid == ((void*)0))
   intel_sdvo->ddc_bus = saved_ddc;
 }





 if (edid == ((void*)0))
  edid = intel_sdvo_get_analog_edid(connector);

 status = connector_status_unknown;
 if (edid != ((void*)0)) {

  if (edid->input & DRM_EDID_INPUT_DIGITAL) {
   status = connector_status_connected;
   if (intel_sdvo->is_hdmi) {
    intel_sdvo->has_hdmi_monitor = drm_detect_hdmi_monitor(edid);
    intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
    intel_sdvo->rgb_quant_range_selectable =
     drm_rgb_quant_range_selectable(edid);
   }
  } else
   status = connector_status_disconnected;
  kfree(edid);
 }

 if (status == connector_status_connected) {
  struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);
  if (intel_sdvo_connector->force_audio != HDMI_AUDIO_AUTO)
   intel_sdvo->has_hdmi_audio = (intel_sdvo_connector->force_audio == HDMI_AUDIO_ON);
 }

 return status;
}
