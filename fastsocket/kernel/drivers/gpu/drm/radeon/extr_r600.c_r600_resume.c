
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atom_context; } ;
struct radeon_device {int accel_working; TYPE_1__ mode_info; } ;


 int DRM_ERROR (char*) ;
 int atom_asic_init (int ) ;
 int r600_startup (struct radeon_device*) ;

int r600_resume(struct radeon_device *rdev)
{
 int r;






 atom_asic_init(rdev->mode_info.atom_context);

 rdev->accel_working = 1;
 r = r600_startup(rdev);
 if (r) {
  DRM_ERROR("r600 startup failed on resume\n");
  rdev->accel_working = 0;
  return r;
 }

 return r;
}
