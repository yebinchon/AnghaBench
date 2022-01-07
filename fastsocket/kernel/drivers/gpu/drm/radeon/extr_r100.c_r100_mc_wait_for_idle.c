
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_UDELAY (int) ;
 int RADEON_MC_IDLE ;
 int RADEON_MC_STATUS ;
 int RREG32 (int ) ;

int r100_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 uint32_t tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32(RADEON_MC_STATUS);
  if (tmp & RADEON_MC_IDLE) {
   return 0;
  }
  DRM_UDELAY(1);
 }
 return -1;
}
