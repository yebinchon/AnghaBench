
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdvo_flags; } ;
struct intel_sdvo_dtd {TYPE_1__ part2; } ;
struct intel_sdvo {int dtd_sdvo_flags; } ;
struct drm_display_mode {int clock; int vdisplay; int hdisplay; } ;


 int intel_sdvo_create_preferred_input_timing (struct intel_sdvo*,int,int ,int ) ;
 int intel_sdvo_get_mode_from_dtd (struct drm_display_mode*,struct intel_sdvo_dtd*) ;
 int intel_sdvo_get_preferred_input_timing (struct intel_sdvo*,struct intel_sdvo_dtd*) ;
 int intel_sdvo_set_target_input (struct intel_sdvo*) ;

__attribute__((used)) static bool
intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
        const struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode)
{
 struct intel_sdvo_dtd input_dtd;


 if (!intel_sdvo_set_target_input(intel_sdvo))
  return 0;

 if (!intel_sdvo_create_preferred_input_timing(intel_sdvo,
            mode->clock / 10,
            mode->hdisplay,
            mode->vdisplay))
  return 0;

 if (!intel_sdvo_get_preferred_input_timing(intel_sdvo,
         &input_dtd))
  return 0;

 intel_sdvo_get_mode_from_dtd(adjusted_mode, &input_dtd);
 intel_sdvo->dtd_sdvo_flags = input_dtd.part2.sdvo_flags;

 return 1;
}
