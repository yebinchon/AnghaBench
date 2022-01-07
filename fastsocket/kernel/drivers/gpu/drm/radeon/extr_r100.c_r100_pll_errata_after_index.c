
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int pll_errata; } ;


 int CHIP_ERRATA_PLL_DUMMYREADS ;
 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CRTC_GEN_CNTL ;
 int RREG32 (int ) ;

void r100_pll_errata_after_index(struct radeon_device *rdev)
{
 if (rdev->pll_errata & CHIP_ERRATA_PLL_DUMMYREADS) {
  (void)RREG32(RADEON_CLOCK_CNTL_DATA);
  (void)RREG32(RADEON_CRTC_GEN_CNTL);
 }
}
