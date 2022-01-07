
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode_config_initialized; int bios_hardcoded_edid; } ;
struct radeon_device {TYPE_1__ mode_info; int ddev; } ;


 int drm_kms_helper_poll_fini (int ) ;
 int drm_mode_config_cleanup (int ) ;
 int kfree (int ) ;
 int radeon_afmt_fini (struct radeon_device*) ;
 int radeon_fbdev_fini (struct radeon_device*) ;
 int radeon_hpd_fini (struct radeon_device*) ;
 int radeon_i2c_fini (struct radeon_device*) ;
 int radeon_pm_fini (struct radeon_device*) ;

void radeon_modeset_fini(struct radeon_device *rdev)
{
 radeon_fbdev_fini(rdev);
 kfree(rdev->mode_info.bios_hardcoded_edid);
 radeon_pm_fini(rdev);

 if (rdev->mode_info.mode_config_initialized) {
  radeon_afmt_fini(rdev);
  drm_kms_helper_poll_fini(rdev->ddev);
  radeon_hpd_fini(rdev);
  drm_mode_config_cleanup(rdev->ddev);
  rdev->mode_info.mode_config_initialized = 0;
 }

 radeon_i2c_fini(rdev);
}
