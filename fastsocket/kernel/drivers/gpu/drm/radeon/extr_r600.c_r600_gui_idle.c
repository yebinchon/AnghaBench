
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GRBM_STATUS ;
 int GUI_ACTIVE ;
 int RREG32 (int ) ;

bool r600_gui_idle(struct radeon_device *rdev)
{
 if (RREG32(GRBM_STATUS) & GUI_ACTIVE)
  return 0;
 else
  return 1;
}
