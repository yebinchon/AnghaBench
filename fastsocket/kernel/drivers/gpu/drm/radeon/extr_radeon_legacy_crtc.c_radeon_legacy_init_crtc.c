
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_crtc {int crtc_id; int base; scalar_t__ crtc_offset; } ;
struct drm_device {int dummy; } ;


 scalar_t__ RADEON_CRTC2_H_TOTAL_DISP ;
 scalar_t__ RADEON_CRTC_H_TOTAL_DISP ;
 int drm_crtc_helper_add (int *,int *) ;
 int legacy_helper_funcs ;

void radeon_legacy_init_crtc(struct drm_device *dev,
          struct radeon_crtc *radeon_crtc)
{
 if (radeon_crtc->crtc_id == 1)
  radeon_crtc->crtc_offset = RADEON_CRTC2_H_TOTAL_DISP - RADEON_CRTC_H_TOTAL_DISP;
 drm_crtc_helper_add(&radeon_crtc->base, &legacy_helper_funcs);
}
