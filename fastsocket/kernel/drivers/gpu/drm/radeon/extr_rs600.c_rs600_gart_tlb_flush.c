
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int C_000100_INVALIDATE_ALL_L1_TLBS ;
 int C_000100_INVALIDATE_L2_CACHE ;
 int RREG32_MC (int ) ;
 int R_000100_MC_PT0_CNTL ;
 int S_000100_INVALIDATE_ALL_L1_TLBS (int) ;
 int S_000100_INVALIDATE_L2_CACHE (int) ;
 int WREG32_MC (int ,int) ;

void rs600_gart_tlb_flush(struct radeon_device *rdev)
{
 uint32_t tmp;

 tmp = RREG32_MC(R_000100_MC_PT0_CNTL);
 tmp &= C_000100_INVALIDATE_ALL_L1_TLBS & C_000100_INVALIDATE_L2_CACHE;
 WREG32_MC(R_000100_MC_PT0_CNTL, tmp);

 tmp = RREG32_MC(R_000100_MC_PT0_CNTL);
 tmp |= S_000100_INVALIDATE_ALL_L1_TLBS(1) | S_000100_INVALIDATE_L2_CACHE(1);
 WREG32_MC(R_000100_MC_PT0_CNTL, tmp);

 tmp = RREG32_MC(R_000100_MC_PT0_CNTL);
 tmp &= C_000100_INVALIDATE_ALL_L1_TLBS & C_000100_INVALIDATE_L2_CACHE;
 WREG32_MC(R_000100_MC_PT0_CNTL, tmp);
 tmp = RREG32_MC(R_000100_MC_PT0_CNTL);
}
