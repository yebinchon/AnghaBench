
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int OMAP3430_GR_MOD ;
 int OMAP_RST_DPLL3 ;
 int RM_RSTCTRL ;
 int WARN_ON (int) ;
 int WKUP_MOD ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int omap2_clk_prepare_for_reboot () ;
 int prm_set_mod_reg_bits (int ,int ,int ) ;

void omap_prcm_arch_reset(char mode)
{
 s16 prcm_offs;
 omap2_clk_prepare_for_reboot();

 if (cpu_is_omap24xx())
  prcm_offs = WKUP_MOD;
 else if (cpu_is_omap34xx())
  prcm_offs = OMAP3430_GR_MOD;
 else
  WARN_ON(1);

 prm_set_mod_reg_bits(OMAP_RST_DPLL3, prcm_offs, RM_RSTCTRL);
}
