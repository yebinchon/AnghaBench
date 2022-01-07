
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ RADEON_OVR_CLR ;
 scalar_t__ RADEON_OVR_WID_LEFT_RIGHT ;
 scalar_t__ RADEON_OVR_WID_TOP_BOTTOM ;
 int WREG32 (scalar_t__,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_overscan_setup(struct drm_crtc *crtc,
      struct drm_display_mode *mode)
{
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 WREG32(RADEON_OVR_CLR + radeon_crtc->crtc_offset, 0);
 WREG32(RADEON_OVR_WID_LEFT_RIGHT + radeon_crtc->crtc_offset, 0);
 WREG32(RADEON_OVR_WID_TOP_BOTTOM + radeon_crtc->crtc_offset, 0);
}
