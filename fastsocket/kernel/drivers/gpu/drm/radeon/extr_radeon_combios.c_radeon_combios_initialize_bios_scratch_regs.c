
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_ACC_MODE_CHANGE ;
 int RADEON_BIOS_0_SCRATCH ;
 int RADEON_BIOS_6_SCRATCH ;
 int RADEON_BIOS_7_SCRATCH ;
 int RADEON_DISPLAY_SWITCHING_DIS ;
 int RADEON_DRIVER_BRIGHTNESS_EN ;
 int RADEON_DRV_LOADED ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void radeon_combios_initialize_bios_scratch_regs(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 uint32_t bios_0_scratch, bios_6_scratch, bios_7_scratch;

 bios_0_scratch = RREG32(RADEON_BIOS_0_SCRATCH);
 bios_6_scratch = RREG32(RADEON_BIOS_6_SCRATCH);
 bios_7_scratch = RREG32(RADEON_BIOS_7_SCRATCH);


 bios_0_scratch &= ~RADEON_DRIVER_BRIGHTNESS_EN;


 bios_6_scratch |= (RADEON_DISPLAY_SWITCHING_DIS |
      RADEON_ACC_MODE_CHANGE);


 bios_7_scratch |= RADEON_DRV_LOADED;

 WREG32(RADEON_BIOS_0_SCRATCH, bios_0_scratch);
 WREG32(RADEON_BIOS_6_SCRATCH, bios_6_scratch);
 WREG32(RADEON_BIOS_7_SCRATCH, bios_7_scratch);
}
