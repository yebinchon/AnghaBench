
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {scalar_t__ color_range; scalar_t__ has_hdmi_monitor; scalar_t__ color_range_auto; struct drm_display_mode const* sdvo_lvds_fixed_mode; scalar_t__ is_lvds; scalar_t__ is_tv; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int private_flags; } ;


 int INTEL_MODE_LIMITED_COLOR_RANGE ;
 scalar_t__ SDVO_COLOR_RANGE_16_235 ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 int intel_mode_set_pixel_multiplier (struct drm_display_mode*,int) ;
 int intel_sdvo_get_pixel_multiplier (struct drm_display_mode*) ;
 int intel_sdvo_get_preferred_input_mode (struct intel_sdvo*,struct drm_display_mode const*,struct drm_display_mode*) ;
 int intel_sdvo_set_output_timings_from_mode (struct intel_sdvo*,struct drm_display_mode const*) ;
 struct intel_sdvo* to_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static bool intel_sdvo_mode_fixup(struct drm_encoder *encoder,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct intel_sdvo *intel_sdvo = to_intel_sdvo(encoder);
 int multiplier;






 if (intel_sdvo->is_tv) {
  if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, mode))
   return 0;

  (void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
          mode,
          adjusted_mode);
 } else if (intel_sdvo->is_lvds) {
  if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
            intel_sdvo->sdvo_lvds_fixed_mode))
   return 0;

  (void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
          mode,
          adjusted_mode);
 }




 multiplier = intel_sdvo_get_pixel_multiplier(adjusted_mode);
 intel_mode_set_pixel_multiplier(adjusted_mode, multiplier);

 if (intel_sdvo->color_range_auto) {

  if (intel_sdvo->has_hdmi_monitor &&
      drm_match_cea_mode(adjusted_mode) > 1)
   intel_sdvo->color_range = SDVO_COLOR_RANGE_16_235;
  else
   intel_sdvo->color_range = 0;
 }

 if (intel_sdvo->color_range)
  adjusted_mode->private_flags |= INTEL_MODE_LIMITED_COLOR_RANGE;

 return 1;
}
