
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RREG32_PLL (int ) ;
 int R_00000F_CP_DYN_CNTL ;
 int R_000011_E2_DYN_CNTL ;
 int R_000013_IDCT_DYN_CNTL ;
 int S_00000F_CP_FORCEON (int) ;
 int S_000011_E2_FORCEON (int) ;
 int S_000013_IDCT_FORCEON (int) ;
 int WREG32_PLL (int ,int) ;
 int radeon_atom_set_clock_gating (struct radeon_device*,int) ;
 int radeon_dynclks ;

void rv515_clock_startup(struct radeon_device *rdev)
{
 if (radeon_dynclks != -1 && radeon_dynclks)
  radeon_atom_set_clock_gating(rdev, 1);

 WREG32_PLL(R_00000F_CP_DYN_CNTL,
  RREG32_PLL(R_00000F_CP_DYN_CNTL) | S_00000F_CP_FORCEON(1));
 WREG32_PLL(R_000011_E2_DYN_CNTL,
  RREG32_PLL(R_000011_E2_DYN_CNTL) | S_000011_E2_FORCEON(1));
 WREG32_PLL(R_000013_IDCT_DYN_CNTL,
  RREG32_PLL(R_000013_IDCT_DYN_CNTL) | S_000013_IDCT_FORCEON(1));
}
