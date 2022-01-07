
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int ATOM_S2_CURRENT_BL_LEVEL_MASK ;
 int ATOM_S2_CURRENT_BL_LEVEL_SHIFT ;
 scalar_t__ CHIP_R600 ;
 int R600_BIOS_2_SCRATCH ;
 int RADEON_BIOS_2_SCRATCH ;
 int RREG32 (int ) ;

__attribute__((used)) static u8
radeon_atom_get_backlight_level_from_reg(struct radeon_device *rdev)
{
 u8 backlight_level;
 u32 bios_2_scratch;

 if (rdev->family >= CHIP_R600)
  bios_2_scratch = RREG32(R600_BIOS_2_SCRATCH);
 else
  bios_2_scratch = RREG32(RADEON_BIOS_2_SCRATCH);

 backlight_level = ((bios_2_scratch & ATOM_S2_CURRENT_BL_LEVEL_MASK) >>
      ATOM_S2_CURRENT_BL_LEVEL_SHIFT);

 return backlight_level;
}
