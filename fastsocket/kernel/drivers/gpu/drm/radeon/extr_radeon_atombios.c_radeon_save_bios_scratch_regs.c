
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct radeon_device {scalar_t__ family; int * bios_scratch; } ;


 scalar_t__ CHIP_R600 ;
 scalar_t__ R600_BIOS_0_SCRATCH ;
 scalar_t__ RADEON_BIOS_0_SCRATCH ;
 int RADEON_BIOS_NUM_SCRATCH ;
 int RREG32 (scalar_t__) ;

void radeon_save_bios_scratch_regs(struct radeon_device *rdev)
{
 uint32_t scratch_reg;
 int i;

 if (rdev->family >= CHIP_R600)
  scratch_reg = R600_BIOS_0_SCRATCH;
 else
  scratch_reg = RADEON_BIOS_0_SCRATCH;

 for (i = 0; i < RADEON_BIOS_NUM_SCRATCH; i++)
  rdev->bios_scratch[i] = RREG32(scratch_reg + (i * 4));
}
