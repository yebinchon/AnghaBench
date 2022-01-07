
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP24XX_EN_GPT1 ;
 int PM_WKEN ;
 int WKUP_MOD ;
 int omap2_enter_full_retention () ;
 int omap_readl (int) ;
 int omap_uart_prepare_suspend () ;
 int omap_writel (int,int) ;
 int prm_read_mod_reg (int ,int ) ;
 int prm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static int omap2_pm_suspend(void)
{
 u32 wken_wkup, mir1;

 wken_wkup = prm_read_mod_reg(WKUP_MOD, PM_WKEN);
 prm_write_mod_reg(wken_wkup & ~OMAP24XX_EN_GPT1, WKUP_MOD, PM_WKEN);


 mir1 = omap_readl(0x480fe0a4);
 omap_writel(1 << 5, 0x480fe0ac);

 omap_uart_prepare_suspend();
 omap2_enter_full_retention();

 omap_writel(mir1, 0x480fe0a4);
 prm_write_mod_reg(wken_wkup, WKUP_MOD, PM_WKEN);

 return 0;
}
