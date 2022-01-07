
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int R_0001F8_MC_IND_INDEX ;
 int R_0001FC_MC_IND_DATA ;
 int S_0001F8_MC_IND_ADDR (int) ;
 int S_0001F8_MC_IND_WR_EN (int) ;
 int WREG32 (int ,int) ;

void r420_mc_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 WREG32(R_0001F8_MC_IND_INDEX, S_0001F8_MC_IND_ADDR(reg) |
  S_0001F8_MC_IND_WR_EN(1));
 WREG32(R_0001FC_MC_IND_DATA, v);
}
