
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
typedef int reg ;


 int RS480_NB_MC_DATA ;
 int RS480_NB_MC_INDEX ;
 int RS480_NB_MC_IND_WR_EN ;
 int WREG32 (int ,int) ;

void rs400_mc_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 WREG32(RS480_NB_MC_INDEX, ((reg) & 0xff) | RS480_NB_MC_IND_WR_EN);
 WREG32(RS480_NB_MC_DATA, (v));
 WREG32(RS480_NB_MC_INDEX, 0xff);
}
