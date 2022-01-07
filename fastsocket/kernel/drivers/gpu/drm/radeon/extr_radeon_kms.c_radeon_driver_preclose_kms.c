
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {struct drm_file* cmask_filp; struct drm_file* hyperz_filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;



void radeon_driver_preclose_kms(struct drm_device *dev,
    struct drm_file *file_priv)
{
 struct radeon_device *rdev = dev->dev_private;
 if (rdev->hyperz_filp == file_priv)
  rdev->hyperz_filp = ((void*)0);
 if (rdev->cmask_filp == file_priv)
  rdev->cmask_filp = ((void*)0);
}
