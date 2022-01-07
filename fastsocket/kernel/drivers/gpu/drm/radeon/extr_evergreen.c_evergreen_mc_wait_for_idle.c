
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {unsigned int usec_timeout; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS ;
 int udelay (int) ;

int evergreen_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 u32 tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32(SRBM_STATUS) & 0x1F00;
  if (!tmp)
   return 0;
  udelay(1);
 }
 return -1;
}
