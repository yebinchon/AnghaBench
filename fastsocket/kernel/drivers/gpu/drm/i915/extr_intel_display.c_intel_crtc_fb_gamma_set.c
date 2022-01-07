
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_crtc {int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_crtc {int dummy; } ;


 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

void intel_crtc_fb_gamma_set(struct drm_crtc *crtc, u16 red, u16 green,
     u16 blue, int regno)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);

 intel_crtc->lut_r[regno] = red >> 8;
 intel_crtc->lut_g[regno] = green >> 8;
 intel_crtc->lut_b[regno] = blue >> 8;
}
