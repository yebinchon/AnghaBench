
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int radeon_crtc_scaling_mode_fixup (struct drm_crtc*,struct drm_display_mode const*,struct drm_display_mode*) ;

__attribute__((used)) static bool radeon_crtc_mode_fixup(struct drm_crtc *crtc,
       const struct drm_display_mode *mode,
       struct drm_display_mode *adjusted_mode)
{
 if (!radeon_crtc_scaling_mode_fixup(crtc, mode, adjusted_mode))
  return 0;
 return 1;
}
