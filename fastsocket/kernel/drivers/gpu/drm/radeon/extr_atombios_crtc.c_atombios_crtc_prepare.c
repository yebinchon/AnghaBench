
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct radeon_crtc {int in_mode_set; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int DRM_MODE_DPMS_OFF ;
 int atombios_crtc_dpms (struct drm_crtc*,int ) ;
 int atombios_lock_crtc (struct drm_crtc*,int ) ;
 int atombios_powergate_crtc (struct drm_crtc*,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void atombios_crtc_prepare(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;

 radeon_crtc->in_mode_set = 1;


 if (ASIC_IS_DCE6(rdev))
  atombios_powergate_crtc(crtc, ATOM_DISABLE);

 atombios_lock_crtc(crtc, ATOM_ENABLE);
 atombios_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
}
