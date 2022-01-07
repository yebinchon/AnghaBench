
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_BUS_CNTL ;
 int RADEON_BUS_MASTER_DIS ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void r100_enable_bm(struct radeon_device *rdev)
{
 uint32_t tmp;

 tmp = RREG32(RADEON_BUS_CNTL) & ~RADEON_BUS_MASTER_DIS;
 WREG32(RADEON_BUS_CNTL, tmp);
}
