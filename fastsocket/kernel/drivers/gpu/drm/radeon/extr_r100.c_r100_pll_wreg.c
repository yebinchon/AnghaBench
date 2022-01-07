
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CLOCK_CNTL_INDEX ;
 int RADEON_PLL_WR_EN ;
 int WREG32 (int ,int) ;
 int WREG8 (int ,int) ;
 int r100_pll_errata_after_data (struct radeon_device*) ;
 int r100_pll_errata_after_index (struct radeon_device*) ;

void r100_pll_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 WREG8(RADEON_CLOCK_CNTL_INDEX, ((reg & 0x3f) | RADEON_PLL_WR_EN));
 r100_pll_errata_after_index(rdev);
 WREG32(RADEON_CLOCK_CNTL_DATA, v);
 r100_pll_errata_after_data(rdev);
}
