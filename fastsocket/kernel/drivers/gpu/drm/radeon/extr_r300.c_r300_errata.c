
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; int pll_errata; } ;


 int CHIP_ERRATA_R300_CG ;
 scalar_t__ CHIP_R300 ;
 int RADEON_CFG_ATI_REV_A11 ;
 int RADEON_CFG_ATI_REV_ID_MASK ;
 int RADEON_CONFIG_CNTL ;
 int RREG32 (int ) ;

__attribute__((used)) static void r300_errata(struct radeon_device *rdev)
{
 rdev->pll_errata = 0;

 if (rdev->family == CHIP_R300 &&
     (RREG32(RADEON_CONFIG_CNTL) & RADEON_CFG_ATI_REV_ID_MASK) == RADEON_CFG_ATI_REV_A11) {
  rdev->pll_errata |= CHIP_ERRATA_R300_CG;
 }
}
