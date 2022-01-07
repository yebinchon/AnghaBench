
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_4__ {TYPE_1__** crtcs; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_device {int num_crtcs; struct radeon_device* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {struct drm_crtc base; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int drm_calc_vbltimestamp_from_scanoutpos (struct drm_device*,int,int*,struct timeval*,unsigned int,struct drm_crtc*) ;

int radeon_get_vblank_timestamp_kms(struct drm_device *dev, int crtc,
        int *max_error,
        struct timeval *vblank_time,
        unsigned flags)
{
 struct drm_crtc *drmcrtc;
 struct radeon_device *rdev = dev->dev_private;

 if (crtc < 0 || crtc >= dev->num_crtcs) {
  DRM_ERROR("Invalid crtc %d\n", crtc);
  return -EINVAL;
 }


 drmcrtc = &rdev->mode_info.crtcs[crtc]->base;


 return drm_calc_vbltimestamp_from_scanoutpos(dev, crtc, max_error,
           vblank_time, flags,
           drmcrtc);
}
