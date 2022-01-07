
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int ATOM_S3_ASIC_GUI_ENGINE_HUNG ;
 int R600_BIOS_3_SCRATCH ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void r600_set_bios_scratch_engine_hung(struct radeon_device *rdev, bool hung)
{
 u32 tmp = RREG32(R600_BIOS_3_SCRATCH);

 if (hung)
  tmp |= ATOM_S3_ASIC_GUI_ENGINE_HUNG;
 else
  tmp &= ~ATOM_S3_ASIC_GUI_ENGINE_HUNG;

 WREG32(R600_BIOS_3_SCRATCH, tmp);
}
