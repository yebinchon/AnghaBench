
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
typedef int reg ;


 int MC_IND_DATA ;
 int MC_IND_INDEX ;
 int WREG32 (int ,int) ;

void rv515_mc_wreg(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
 WREG32(MC_IND_INDEX, 0xff0000 | ((reg) & 0xffff));
 WREG32(MC_IND_DATA, (v));
 WREG32(MC_IND_INDEX, 0);
}
