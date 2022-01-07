
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; int dev; } ;


 scalar_t__ CHIP_CAYMAN ;
 scalar_t__ CP_BUSY_STAT ;
 scalar_t__ CP_STALLED_STAT1 ;
 scalar_t__ CP_STALLED_STAT2 ;
 scalar_t__ CP_STAT ;
 scalar_t__ DMA_STATUS_REG ;
 scalar_t__ GRBM_STATUS ;
 scalar_t__ GRBM_STATUS_SE0 ;
 scalar_t__ GRBM_STATUS_SE1 ;
 int RREG32 (scalar_t__) ;
 scalar_t__ SRBM_STATUS ;
 scalar_t__ SRBM_STATUS2 ;
 int dev_info (int ,char*,int ) ;

void evergreen_print_gpu_status_regs(struct radeon_device *rdev)
{
 dev_info(rdev->dev, "  GRBM_STATUS               = 0x%08X\n",
  RREG32(GRBM_STATUS));
 dev_info(rdev->dev, "  GRBM_STATUS_SE0           = 0x%08X\n",
  RREG32(GRBM_STATUS_SE0));
 dev_info(rdev->dev, "  GRBM_STATUS_SE1           = 0x%08X\n",
  RREG32(GRBM_STATUS_SE1));
 dev_info(rdev->dev, "  SRBM_STATUS               = 0x%08X\n",
  RREG32(SRBM_STATUS));
 dev_info(rdev->dev, "  SRBM_STATUS2              = 0x%08X\n",
  RREG32(SRBM_STATUS2));
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
 if (rdev->family >= CHIP_CAYMAN) {
  dev_info(rdev->dev, "  R_00D834_DMA_STATUS_REG   = 0x%08X\n",
    RREG32(DMA_STATUS_REG + 0x800));
 }
}
