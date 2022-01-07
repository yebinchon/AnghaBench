
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atom_context; } ;
struct radeon_device {int accel_working; TYPE_1__ mode_info; int dev; } ;


 int DRM_ERROR (char*) ;
 int atom_asic_init (int ) ;
 int dev_warn (int ,char*) ;
 int evergreen_startup (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;

int evergreen_resume(struct radeon_device *rdev)
{
 int r;




 if (radeon_asic_reset(rdev))
  dev_warn(rdev->dev, "GPU reset failed !\n");





 atom_asic_init(rdev->mode_info.atom_context);

 rdev->accel_working = 1;
 r = evergreen_startup(rdev);
 if (r) {
  DRM_ERROR("evergreen startup failed on resume\n");
  rdev->accel_working = 0;
  return r;
 }

 return r;

}
