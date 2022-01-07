
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 scalar_t__ G_000090_MC_SYSTEM_IDLE (int ) ;
 int RREG32_MC (int ) ;
 int R_000090_MC_SYSTEM_STATUS ;
 int udelay (int) ;

int rs690_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 uint32_t tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32_MC(R_000090_MC_SYSTEM_STATUS);
  if (G_000090_MC_SYSTEM_IDLE(tmp))
   return 0;
  udelay(1);
 }
 return -1;
}
