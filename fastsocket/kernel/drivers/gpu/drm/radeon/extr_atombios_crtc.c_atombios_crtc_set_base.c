
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int avivo_crtc_do_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int ) ;
 int dce4_crtc_do_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int ) ;
 int radeon_crtc_do_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int ) ;

int atombios_crtc_set_base(struct drm_crtc *crtc, int x, int y,
      struct drm_framebuffer *old_fb)
{
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;

 if (ASIC_IS_DCE4(rdev))
  return dce4_crtc_do_set_base(crtc, old_fb, x, y, 0);
 else if (ASIC_IS_AVIVO(rdev))
  return avivo_crtc_do_set_base(crtc, old_fb, x, y, 0);
 else
  return radeon_crtc_do_set_base(crtc, old_fb, x, y, 0);
}
