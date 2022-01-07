
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;




 int AVIVO_P1PLL_INT_SS_CNTL ;
 int AVIVO_P2PLL_INT_SS_CNTL ;
 int EVERGREEN_P1PLL_SS_CNTL ;
 int EVERGREEN_P2PLL_SS_CNTL ;
 int EVERGREEN_PxPLL_SS_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void atombios_disable_ss(struct radeon_device *rdev, int pll_id)
{
 u32 ss_cntl;

 if (ASIC_IS_DCE4(rdev)) {
  switch (pll_id) {
  case 130:
   ss_cntl = RREG32(EVERGREEN_P1PLL_SS_CNTL);
   ss_cntl &= ~EVERGREEN_PxPLL_SS_EN;
   WREG32(EVERGREEN_P1PLL_SS_CNTL, ss_cntl);
   break;
  case 129:
   ss_cntl = RREG32(EVERGREEN_P2PLL_SS_CNTL);
   ss_cntl &= ~EVERGREEN_PxPLL_SS_EN;
   WREG32(EVERGREEN_P2PLL_SS_CNTL, ss_cntl);
   break;
  case 131:
  case 128:
   return;
  }
 } else if (ASIC_IS_AVIVO(rdev)) {
  switch (pll_id) {
  case 130:
   ss_cntl = RREG32(AVIVO_P1PLL_INT_SS_CNTL);
   ss_cntl &= ~1;
   WREG32(AVIVO_P1PLL_INT_SS_CNTL, ss_cntl);
   break;
  case 129:
   ss_cntl = RREG32(AVIVO_P2PLL_INT_SS_CNTL);
   ss_cntl &= ~1;
   WREG32(AVIVO_P2PLL_INT_SS_CNTL, ss_cntl);
   break;
  case 131:
  case 128:
   return;
  }
 }
}
