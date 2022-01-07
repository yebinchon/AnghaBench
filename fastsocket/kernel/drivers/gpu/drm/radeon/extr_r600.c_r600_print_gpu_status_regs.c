
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dev; } ;


 int CP_BUSY_STAT ;
 int CP_STALLED_STAT1 ;
 int CP_STALLED_STAT2 ;
 int CP_STAT ;
 int DMA_STATUS_REG ;
 int RREG32 (int ) ;
 int R_000E50_SRBM_STATUS ;
 int R_008010_GRBM_STATUS ;
 int R_008014_GRBM_STATUS2 ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static void r600_print_gpu_status_regs(struct radeon_device *rdev)
{
 dev_info(rdev->dev, "  R_008010_GRBM_STATUS      = 0x%08X\n",
   RREG32(R_008010_GRBM_STATUS));
 dev_info(rdev->dev, "  R_008014_GRBM_STATUS2     = 0x%08X\n",
   RREG32(R_008014_GRBM_STATUS2));
 dev_info(rdev->dev, "  R_000E50_SRBM_STATUS      = 0x%08X\n",
   RREG32(R_000E50_SRBM_STATUS));
 dev_info(rdev->dev, "  R_008674_CP_STALLED_STAT1 = 0x%08X\n",
   RREG32(CP_STALLED_STAT1));
 dev_info(rdev->dev, "  R_008678_CP_STALLED_STAT2 = 0x%08X\n",
   RREG32(CP_STALLED_STAT2));
 dev_info(rdev->dev, "  R_00867C_CP_BUSY_STAT     = 0x%08X\n",
   RREG32(CP_BUSY_STAT));
 dev_info(rdev->dev, "  R_008680_CP_STAT          = 0x%08X\n",
   RREG32(CP_STAT));
 dev_info(rdev->dev, "  R_00D034_DMA_STATUS_REG   = 0x%08X\n",
  RREG32(DMA_STATUS_REG));
}
