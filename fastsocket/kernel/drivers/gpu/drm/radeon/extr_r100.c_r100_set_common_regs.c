
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {struct drm_device* ddev; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; int subsystem_vendor; int subsystem_device; } ;


 int RADEON_CAP0_TRIG_CNTL ;
 int RADEON_CAP1_TRIG_CNTL ;
 int RADEON_CRT2_DISP1_SEL ;
 int RADEON_DAC2_DAC2_CLK_SEL ;
 int RADEON_DAC2_DAC_CLK_SEL ;
 int RADEON_DAC_CNTL2 ;
 int RADEON_DISP_HW_DEBUG ;
 int RADEON_DVI_I2C_CNTL_1 ;
 int RADEON_I2C_CNTL_1 ;
 int RADEON_OV0_SCALE_CNTL ;
 int RADEON_PLL_PWRMGT_CNTL ;
 int RADEON_PM_MODE_SEL ;
 int RADEON_SUBPIC_CNTL ;
 int RADEON_TV_DAC_BDACPD ;
 int RADEON_TV_DAC_BGADJ_MASK ;
 int RADEON_TV_DAC_CNTL ;
 int RADEON_TV_DAC_DACADJ_MASK ;
 int RADEON_TV_DAC_GDACPD ;
 int RADEON_TV_DAC_NBLANK ;
 int RADEON_TV_DAC_NHOLD ;
 int RADEON_TV_DAC_PEDESTAL ;
 int RADEON_TV_DAC_RDACPD ;
 int RADEON_TV_DAC_STD_MASK ;
 int RADEON_TV_DAC_STD_PS2 ;
 int RADEON_VIPH_CONTROL ;
 int RREG32 (int ) ;
 int RREG32_PLL (int ) ;
 int WREG32 (int ,int) ;
 int WREG32_PLL (int ,int) ;

void r100_set_common_regs(struct radeon_device *rdev)
{
 struct drm_device *dev = rdev->ddev;
 bool force_dac2 = 0;
 u32 tmp;


 WREG32(RADEON_OV0_SCALE_CNTL, 0);
 WREG32(RADEON_SUBPIC_CNTL, 0);
 WREG32(RADEON_VIPH_CONTROL, 0);
 WREG32(RADEON_I2C_CNTL_1, 0);
 WREG32(RADEON_DVI_I2C_CNTL_1, 0);
 WREG32(RADEON_CAP0_TRIG_CNTL, 0);
 WREG32(RADEON_CAP1_TRIG_CNTL, 0);






 switch (dev->pdev->device) {

 case 0x515e:
 case 0x5969:
  force_dac2 = 1;
  break;

 case 0x5159:
 case 0x515a:

  if ((dev->pdev->subsystem_vendor == 0x1028 ) &&
      ((dev->pdev->subsystem_device == 0x016c) ||
       (dev->pdev->subsystem_device == 0x016d) ||
       (dev->pdev->subsystem_device == 0x016e) ||
       (dev->pdev->subsystem_device == 0x016f) ||
       (dev->pdev->subsystem_device == 0x0170) ||
       (dev->pdev->subsystem_device == 0x017d) ||
       (dev->pdev->subsystem_device == 0x017e) ||
       (dev->pdev->subsystem_device == 0x0183) ||
       (dev->pdev->subsystem_device == 0x018a) ||
       (dev->pdev->subsystem_device == 0x019a)))
   force_dac2 = 1;
  break;
 }

 if (force_dac2) {
  u32 disp_hw_debug = RREG32(RADEON_DISP_HW_DEBUG);
  u32 tv_dac_cntl = RREG32(RADEON_TV_DAC_CNTL);
  u32 dac2_cntl = RREG32(RADEON_DAC_CNTL2);






  dac2_cntl &= ~RADEON_DAC2_DAC_CLK_SEL;
  dac2_cntl |= RADEON_DAC2_DAC2_CLK_SEL;
  disp_hw_debug |= RADEON_CRT2_DISP1_SEL;


  tv_dac_cntl &= ~(RADEON_TV_DAC_PEDESTAL |
     RADEON_TV_DAC_STD_MASK |
     RADEON_TV_DAC_RDACPD |
     RADEON_TV_DAC_GDACPD |
     RADEON_TV_DAC_BDACPD |
     RADEON_TV_DAC_BGADJ_MASK |
     RADEON_TV_DAC_DACADJ_MASK);
  tv_dac_cntl |= (RADEON_TV_DAC_NBLANK |
    RADEON_TV_DAC_NHOLD |
    RADEON_TV_DAC_STD_PS2 |
    (0x58 << 16));

  WREG32(RADEON_TV_DAC_CNTL, tv_dac_cntl);
  WREG32(RADEON_DISP_HW_DEBUG, disp_hw_debug);
  WREG32(RADEON_DAC_CNTL2, dac2_cntl);
 }


 tmp = RREG32_PLL(RADEON_PLL_PWRMGT_CNTL);
 tmp &= ~RADEON_PM_MODE_SEL;
 WREG32_PLL(RADEON_PLL_PWRMGT_CNTL, tmp);

}
