
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int clock; } ;
struct intel_tv {int base; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;


 struct intel_tv* enc_to_intel_tv (struct drm_encoder*) ;
 scalar_t__ intel_encoder_check_is_cloned (int *) ;
 struct tv_mode* intel_tv_mode_find (struct intel_tv*) ;

__attribute__((used)) static bool
intel_tv_mode_fixup(struct drm_encoder *encoder,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct intel_tv *intel_tv = enc_to_intel_tv(encoder);
 const struct tv_mode *tv_mode = intel_tv_mode_find(intel_tv);

 if (!tv_mode)
  return 0;

 if (intel_encoder_check_is_cloned(&intel_tv->base))
  return 0;

 adjusted_mode->clock = tv_mode->clock;
 return 1;
}
