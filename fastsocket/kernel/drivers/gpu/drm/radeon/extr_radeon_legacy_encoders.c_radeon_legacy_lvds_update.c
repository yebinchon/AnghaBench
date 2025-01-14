
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct radeon_encoder_lvds {int panel_pwr_delay; int backlight_level; scalar_t__ bl_dev; } ;
struct radeon_encoder_atom_dig {int panel_pwr_delay; int backlight_level; scalar_t__ bl_dev; } ;
struct radeon_encoder {struct radeon_encoder_lvds* enc_priv; } ;
struct TYPE_2__ {scalar_t__ connector_table; } ;
struct radeon_device {scalar_t__ is_atom_bios; TYPE_1__ mode_info; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ CT_IBOOK ;
 scalar_t__ CT_POWERBOOK_EXTERNAL ;
 scalar_t__ CT_POWERBOOK_INTERNAL ;
 scalar_t__ CT_POWERBOOK_VGA ;
 int DRM_DEBUG_KMS (char*) ;




 int RADEON_AUTO_PWRUP_EN ;
 int RADEON_DISP_PWR_MAN ;
 int RADEON_LVDS_BLON ;
 int RADEON_LVDS_BL_MOD_EN ;
 int RADEON_LVDS_BL_MOD_LEVEL_MASK ;
 int RADEON_LVDS_BL_MOD_LEVEL_SHIFT ;
 int RADEON_LVDS_DIGON ;
 int RADEON_LVDS_DISPLAY_DIS ;
 int RADEON_LVDS_EN ;
 int RADEON_LVDS_GEN_CNTL ;
 int RADEON_LVDS_ON ;
 int RADEON_LVDS_PLL_CNTL ;
 int RADEON_LVDS_PLL_EN ;
 int RADEON_LVDS_PLL_RESET ;
 int RADEON_PIXCLKS_CNTL ;
 int RADEON_PIXCLK_LVDS_ALWAYS_ONb ;
 int RREG32 (int ) ;
 int RREG32_PLL (int ) ;
 int WREG32 (int ,int) ;
 int WREG32_PLL (int ,int) ;
 int WREG32_PLL_P (int ,int ,int ) ;
 int mdelay (int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 int radeon_combios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_legacy_lvds_update(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 uint32_t lvds_gen_cntl, lvds_pll_cntl, pixclks_cntl, disp_pwr_man;
 int panel_pwr_delay = 2000;
 bool is_mac = 0;
 uint8_t backlight_level;
 DRM_DEBUG_KMS("\n");

 lvds_gen_cntl = RREG32(RADEON_LVDS_GEN_CNTL);
 backlight_level = (lvds_gen_cntl >> RADEON_LVDS_BL_MOD_LEVEL_SHIFT) & 0xff;

 if (radeon_encoder->enc_priv) {
  if (rdev->is_atom_bios) {
   struct radeon_encoder_atom_dig *lvds = radeon_encoder->enc_priv;
   panel_pwr_delay = lvds->panel_pwr_delay;
   if (lvds->bl_dev)
    backlight_level = lvds->backlight_level;
  } else {
   struct radeon_encoder_lvds *lvds = radeon_encoder->enc_priv;
   panel_pwr_delay = lvds->panel_pwr_delay;
   if (lvds->bl_dev)
    backlight_level = lvds->backlight_level;
  }
 }




 if ((rdev->mode_info.connector_table == CT_IBOOK) ||
     (rdev->mode_info.connector_table == CT_POWERBOOK_EXTERNAL) ||
     (rdev->mode_info.connector_table == CT_POWERBOOK_INTERNAL) ||
     (rdev->mode_info.connector_table == CT_POWERBOOK_VGA))
  is_mac = 1;

 switch (mode) {
 case 130:
  disp_pwr_man = RREG32(RADEON_DISP_PWR_MAN);
  disp_pwr_man |= RADEON_AUTO_PWRUP_EN;
  WREG32(RADEON_DISP_PWR_MAN, disp_pwr_man);
  lvds_pll_cntl = RREG32(RADEON_LVDS_PLL_CNTL);
  lvds_pll_cntl |= RADEON_LVDS_PLL_EN;
  WREG32(RADEON_LVDS_PLL_CNTL, lvds_pll_cntl);
  mdelay(1);

  lvds_pll_cntl = RREG32(RADEON_LVDS_PLL_CNTL);
  lvds_pll_cntl &= ~RADEON_LVDS_PLL_RESET;
  WREG32(RADEON_LVDS_PLL_CNTL, lvds_pll_cntl);

  lvds_gen_cntl &= ~(RADEON_LVDS_DISPLAY_DIS |
       RADEON_LVDS_BL_MOD_LEVEL_MASK);
  lvds_gen_cntl |= (RADEON_LVDS_ON | RADEON_LVDS_EN |
      RADEON_LVDS_DIGON | RADEON_LVDS_BLON |
      (backlight_level << RADEON_LVDS_BL_MOD_LEVEL_SHIFT));
  if (is_mac)
   lvds_gen_cntl |= RADEON_LVDS_BL_MOD_EN;
  mdelay(panel_pwr_delay);
  WREG32(RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
  break;
 case 129:
 case 128:
 case 131:
  pixclks_cntl = RREG32_PLL(RADEON_PIXCLKS_CNTL);
  WREG32_PLL_P(RADEON_PIXCLKS_CNTL, 0, ~RADEON_PIXCLK_LVDS_ALWAYS_ONb);
  lvds_gen_cntl |= RADEON_LVDS_DISPLAY_DIS;
  if (is_mac) {
   lvds_gen_cntl &= ~RADEON_LVDS_BL_MOD_EN;
   WREG32(RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
   lvds_gen_cntl &= ~(RADEON_LVDS_ON | RADEON_LVDS_EN);
  } else {
   WREG32(RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
   lvds_gen_cntl &= ~(RADEON_LVDS_ON | RADEON_LVDS_BLON | RADEON_LVDS_EN | RADEON_LVDS_DIGON);
  }
  mdelay(panel_pwr_delay);
  WREG32(RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
  WREG32_PLL(RADEON_PIXCLKS_CNTL, pixclks_cntl);
  mdelay(panel_pwr_delay);
  break;
 }

 if (rdev->is_atom_bios)
  radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);
 else
  radeon_combios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);

}
