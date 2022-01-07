
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CLOCK_CNTL_INDEX ;
 int RREG32 (int ) ;
 int WREG8 (int ,int) ;
 int r100_pll_errata_after_data (struct radeon_device*) ;
 int r100_pll_errata_after_index (struct radeon_device*) ;

uint32_t r100_pll_rreg(struct radeon_device *rdev, uint32_t reg)
{
 uint32_t data;

 WREG8(RADEON_CLOCK_CNTL_INDEX, reg & 0x3f);
 r100_pll_errata_after_index(rdev);
 data = RREG32(RADEON_CLOCK_CNTL_DATA);
 r100_pll_errata_after_data(rdev);
 return data;
}
