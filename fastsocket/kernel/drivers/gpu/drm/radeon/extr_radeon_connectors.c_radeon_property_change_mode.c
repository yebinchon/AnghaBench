
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_crtc {int fb; int y; int x; int mode; scalar_t__ enabled; } ;


 int drm_crtc_helper_set_mode (struct drm_crtc*,int *,int ,int ,int ) ;

__attribute__((used)) static void radeon_property_change_mode(struct drm_encoder *encoder)
{
 struct drm_crtc *crtc = encoder->crtc;

 if (crtc && crtc->enabled) {
  drm_crtc_helper_set_mode(crtc, &crtc->mode,
      crtc->x, crtc->y, crtc->fb);
 }
}
