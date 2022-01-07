
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int MC_IND_DATA ;
 int MC_IND_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

uint32_t rv515_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 uint32_t r;

 WREG32(MC_IND_INDEX, 0x7f0000 | (reg & 0xffff));
 r = RREG32(MC_IND_DATA);
 WREG32(MC_IND_INDEX, 0);
 return r;
}
