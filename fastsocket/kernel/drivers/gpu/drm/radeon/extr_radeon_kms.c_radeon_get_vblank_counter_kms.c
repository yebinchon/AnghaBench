
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int num_crtc; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int radeon_get_vblank_counter (struct radeon_device*,int) ;

u32 radeon_get_vblank_counter_kms(struct drm_device *dev, int crtc)
{
 struct radeon_device *rdev = dev->dev_private;

 if (crtc < 0 || crtc >= rdev->num_crtc) {
  DRM_ERROR("Invalid crtc %d\n", crtc);
  return -EINVAL;
 }

 return radeon_get_vblank_counter(rdev, crtc);
}
