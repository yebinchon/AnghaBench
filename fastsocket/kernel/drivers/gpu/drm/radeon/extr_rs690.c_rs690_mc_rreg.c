
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int C_000078_MC_IND_ADDR ;
 int RREG32 (int ) ;
 int R_000078_MC_INDEX ;
 int R_00007C_MC_DATA ;
 int S_000078_MC_IND_ADDR (int ) ;
 int WREG32 (int ,int ) ;

uint32_t rs690_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 uint32_t r;

 WREG32(R_000078_MC_INDEX, S_000078_MC_IND_ADDR(reg));
 r = RREG32(R_00007C_MC_DATA);
 WREG32(R_000078_MC_INDEX, ~C_000078_MC_IND_ADDR);
 return r;
}
