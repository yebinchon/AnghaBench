
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int accel_working; int ddev; int dev; } ;


 int RREG32 (int ) ;
 int R_0007C0_CP_STAT ;
 int R_000E40_RBBM_STATUS ;
 int dev_warn (int ,char*,int ,int ) ;
 int r300_clock_startup (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;
 int radeon_combios_asic_init (int ) ;
 int radeon_surface_init (struct radeon_device*) ;
 int rs400_gart_disable (struct radeon_device*) ;
 int rs400_mc_program (struct radeon_device*) ;
 int rs400_startup (struct radeon_device*) ;

int rs400_resume(struct radeon_device *rdev)
{
 int r;


 rs400_gart_disable(rdev);

 r300_clock_startup(rdev);

 rs400_mc_program(rdev);

 if (radeon_asic_reset(rdev)) {
  dev_warn(rdev->dev, "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
   RREG32(R_000E40_RBBM_STATUS),
   RREG32(R_0007C0_CP_STAT));
 }

 radeon_combios_asic_init(rdev->ddev);

 r300_clock_startup(rdev);

 radeon_surface_init(rdev);

 rdev->accel_working = 1;
 r = rs400_startup(rdev);
 if (r) {
  rdev->accel_working = 0;
 }
 return r;
}
