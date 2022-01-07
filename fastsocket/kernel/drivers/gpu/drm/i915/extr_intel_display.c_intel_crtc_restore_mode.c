
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int fb; int y; int x; int mode; } ;


 int intel_set_mode (struct drm_crtc*,int *,int ,int ,int ) ;

void intel_crtc_restore_mode(struct drm_crtc *crtc)
{
 intel_set_mode(crtc, &crtc->mode, crtc->x, crtc->y, crtc->fb);
}
