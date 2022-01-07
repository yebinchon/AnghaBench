
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int clock; int private_flags; scalar_t__ hsync_start; scalar_t__ hdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int gen; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int INTEL_MODE_CRTC_TIMINGS_SET ;
 int IRONLAKE_FDI_FREQ ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;

__attribute__((used)) static bool intel_crtc_mode_fixup(struct drm_crtc *crtc,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct drm_device *dev = crtc->dev;

 if (HAS_PCH_SPLIT(dev)) {

  if (mode->clock * 3 > IRONLAKE_FDI_FREQ * 4)
   return 0;
 }




 if (!(adjusted_mode->private_flags & INTEL_MODE_CRTC_TIMINGS_SET))
  drm_mode_set_crtcinfo(adjusted_mode, 0);




 if ((INTEL_INFO(dev)->gen > 4 || IS_G4X(dev)) &&
  adjusted_mode->hsync_start == adjusted_mode->hdisplay)
  return 0;

 return 1;
}
