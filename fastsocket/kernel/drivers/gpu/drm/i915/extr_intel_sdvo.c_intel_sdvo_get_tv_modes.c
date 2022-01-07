
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tv_res ;
struct intel_sdvo_sdtv_resolution_request {int dummy; } ;
struct intel_sdvo {int tv_format_index; int attached_output; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; } ;
typedef int format_map ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 int intel_sdvo_read_response (struct intel_sdvo*,int*,int) ;
 int intel_sdvo_set_target_output (struct intel_sdvo*,int ) ;
 int intel_sdvo_write_cmd (struct intel_sdvo*,int ,struct intel_sdvo_sdtv_resolution_request*,int) ;
 int memcpy (struct intel_sdvo_sdtv_resolution_request*,int*,int ) ;
 int min (int,int) ;
 int * sdvo_tv_modes ;

__attribute__((used)) static void intel_sdvo_get_tv_modes(struct drm_connector *connector)
{
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(connector);
 struct intel_sdvo_sdtv_resolution_request tv_res;
 uint32_t reply = 0, format_map = 0;
 int i;




 format_map = 1 << intel_sdvo->tv_format_index;
 memcpy(&tv_res, &format_map,
        min(sizeof(format_map), sizeof(struct intel_sdvo_sdtv_resolution_request)));

 if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo->attached_output))
  return;

 BUILD_BUG_ON(sizeof(tv_res) != 3);
 if (!intel_sdvo_write_cmd(intel_sdvo,
      SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT,
      &tv_res, sizeof(tv_res)))
  return;
 if (!intel_sdvo_read_response(intel_sdvo, &reply, 3))
  return;

 for (i = 0; i < ARRAY_SIZE(sdvo_tv_modes); i++)
  if (reply & (1 << i)) {
   struct drm_display_mode *nmode;
   nmode = drm_mode_duplicate(connector->dev,
         &sdvo_tv_modes[i]);
   if (nmode)
    drm_mode_probed_add(connector, nmode);
  }
}
