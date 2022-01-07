
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_UDELAY (int) ;
 int RREG32_MC (int ) ;
 int RS480_GART_CACHE_CNTRL ;
 int RS480_GART_CACHE_INVALIDATE ;
 int WREG32_MC (int ,int) ;

void rs400_gart_tlb_flush(struct radeon_device *rdev)
{
 uint32_t tmp;
 unsigned int timeout = rdev->usec_timeout;

 WREG32_MC(RS480_GART_CACHE_CNTRL, RS480_GART_CACHE_INVALIDATE);
 do {
  tmp = RREG32_MC(RS480_GART_CACHE_CNTRL);
  if ((tmp & RS480_GART_CACHE_INVALIDATE) == 0)
   break;
  DRM_UDELAY(1);
  timeout--;
 } while (timeout > 0);
 WREG32_MC(RS480_GART_CACHE_CNTRL, 0);
}
