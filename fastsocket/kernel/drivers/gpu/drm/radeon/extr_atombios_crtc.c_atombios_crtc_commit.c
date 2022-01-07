
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_crtc {int in_mode_set; } ;
struct drm_crtc {int dummy; } ;


 int ATOM_DISABLE ;
 int DRM_MODE_DPMS_ON ;
 int atombios_crtc_dpms (struct drm_crtc*,int ) ;
 int atombios_lock_crtc (struct drm_crtc*,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void atombios_crtc_commit(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 atombios_crtc_dpms(crtc, DRM_MODE_DPMS_ON);
 atombios_lock_crtc(crtc, ATOM_DISABLE);
 radeon_crtc->in_mode_set = 0;
}
