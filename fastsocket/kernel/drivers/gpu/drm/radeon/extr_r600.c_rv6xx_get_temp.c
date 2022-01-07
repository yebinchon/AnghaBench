
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int ASIC_T_MASK ;
 int ASIC_T_SHIFT ;
 int CG_THERMAL_STATUS ;
 int RREG32 (int ) ;

int rv6xx_get_temp(struct radeon_device *rdev)
{
 u32 temp = (RREG32(CG_THERMAL_STATUS) & ASIC_T_MASK) >>
  ASIC_T_SHIFT;
 int actual_temp = temp & 0xff;

 if (temp & 0x100)
  actual_temp -= 256;

 return actual_temp * 1000;
}
