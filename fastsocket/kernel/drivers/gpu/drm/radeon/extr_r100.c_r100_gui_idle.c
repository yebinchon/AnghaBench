
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RADEON_RBBM_ACTIVE ;
 int RADEON_RBBM_STATUS ;
 int RREG32 (int ) ;

bool r100_gui_idle(struct radeon_device *rdev)
{
 if (RREG32(RADEON_RBBM_STATUS) & RADEON_RBBM_ACTIVE)
  return 0;
 else
  return 1;
}
