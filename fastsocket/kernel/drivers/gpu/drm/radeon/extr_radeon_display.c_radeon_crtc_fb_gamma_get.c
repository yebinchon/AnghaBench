
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_crtc {int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_crtc {int dummy; } ;


 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

void radeon_crtc_fb_gamma_get(struct drm_crtc *crtc, u16 *red, u16 *green,
         u16 *blue, int regno)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 *red = radeon_crtc->lut_r[regno] << 6;
 *green = radeon_crtc->lut_g[regno] << 6;
 *blue = radeon_crtc->lut_b[regno] << 6;
}
