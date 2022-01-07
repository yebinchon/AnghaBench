
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u16 ;
struct radeon_crtc {int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_crtc {int dummy; } ;


 int radeon_crtc_load_lut (struct drm_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_crtc_gamma_set(struct drm_crtc *crtc, u16 *red, u16 *green,
      u16 *blue, uint32_t start, uint32_t size)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 int end = (start + size > 256) ? 256 : start + size, i;


 for (i = start; i < end; i++) {
  radeon_crtc->lut_r[i] = red[i] >> 6;
  radeon_crtc->lut_g[i] = green[i] >> 6;
  radeon_crtc->lut_b[i] = blue[i] >> 6;
 }
 radeon_crtc_load_lut(crtc);
}
