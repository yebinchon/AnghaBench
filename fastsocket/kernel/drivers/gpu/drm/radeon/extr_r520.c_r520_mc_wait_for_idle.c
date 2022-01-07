
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_UDELAY (int) ;
 int R520_MC_STATUS ;
 int R520_MC_STATUS_IDLE ;
 int RREG32_MC (int ) ;

int r520_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 uint32_t tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32_MC(R520_MC_STATUS);
  if (tmp & R520_MC_STATUS_IDLE) {
   return 0;
  }
  DRM_UDELAY(1);
 }
 return -1;
}
