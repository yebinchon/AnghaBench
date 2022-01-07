
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_dispclk; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct radeon_atom_ss {int dummy; } ;


 int ASIC_INTERNAL_SS_ON_DCPLL ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_DCPLL ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int atombios_crtc_program_ss (struct radeon_device*,int ,int ,int,struct radeon_atom_ss*) ;
 int atombios_crtc_set_disp_eng_pll (struct radeon_device*,int ) ;
 int radeon_atombios_get_asic_ss_info (struct radeon_device*,struct radeon_atom_ss*,int ,int ) ;

void radeon_atom_disp_eng_pll_init(struct radeon_device *rdev)
{

 if (ASIC_IS_DCE6(rdev))
  atombios_crtc_set_disp_eng_pll(rdev, rdev->clock.default_dispclk);
 else if (ASIC_IS_DCE4(rdev)) {
  struct radeon_atom_ss ss;
  bool ss_enabled = radeon_atombios_get_asic_ss_info(rdev, &ss,
           ASIC_INTERNAL_SS_ON_DCPLL,
           rdev->clock.default_dispclk);
  if (ss_enabled)
   atombios_crtc_program_ss(rdev, ATOM_DISABLE, ATOM_DCPLL, -1, &ss);

  atombios_crtc_set_disp_eng_pll(rdev, rdev->clock.default_dispclk);
  if (ss_enabled)
   atombios_crtc_program_ss(rdev, ATOM_ENABLE, ATOM_DCPLL, -1, &ss);
 }

}
