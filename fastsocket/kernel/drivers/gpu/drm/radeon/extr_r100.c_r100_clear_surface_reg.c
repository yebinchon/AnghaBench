
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 scalar_t__ RADEON_SURFACE0_INFO ;
 int WREG32 (scalar_t__,int ) ;

void r100_clear_surface_reg(struct radeon_device *rdev, int reg)
{
 int surf_index = reg * 16;
 WREG32(RADEON_SURFACE0_INFO + surf_index, 0);
}
