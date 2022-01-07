
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV350 ;
 scalar_t__ CHIP_RV380 ;
 int RREG32_PLL (int ) ;
 int R_00000D_SCLK_CNTL ;
 int S_00000D_FORCE_CP (int) ;
 int S_00000D_FORCE_VAP (int) ;
 int S_00000D_FORCE_VIP (int) ;
 int WREG32_PLL (int ,int) ;
 int radeon_dynclks ;
 int radeon_legacy_set_clock_gating (struct radeon_device*,int) ;

void r300_clock_startup(struct radeon_device *rdev)
{
 u32 tmp;

 if (radeon_dynclks != -1 && radeon_dynclks)
  radeon_legacy_set_clock_gating(rdev, 1);

 tmp = RREG32_PLL(R_00000D_SCLK_CNTL);
 tmp |= S_00000D_FORCE_CP(1) | S_00000D_FORCE_VIP(1);
 if ((rdev->family == CHIP_RV350) || (rdev->family == CHIP_RV380))
  tmp |= S_00000D_FORCE_VAP(1);
 WREG32_PLL(R_00000D_SCLK_CNTL, tmp);
}
