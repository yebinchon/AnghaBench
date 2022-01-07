
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; } ;


 int DELAYED_APP ;
 int OMAP24XX_GR_MOD ;
 int OMAP24XX_VALID_CONFIG ;
 int OMAP2_PRCM_CLKCFG_CTRL_OFFSET ;
 int cpu_is_omap24xx () ;
 int prm_read_mod_reg (int ,int ) ;
 int prm_write_mod_reg (int ,int ,int ) ;

__attribute__((used)) static void _omap2xxx_clk_commit(struct clk *clk)
{
 if (!cpu_is_omap24xx())
  return;

 if (!(clk->flags & DELAYED_APP))
  return;

 prm_write_mod_reg(OMAP24XX_VALID_CONFIG, OMAP24XX_GR_MOD,
  OMAP2_PRCM_CLKCFG_CTRL_OFFSET);

 prm_read_mod_reg(OMAP24XX_GR_MOD, OMAP2_PRCM_CLKCFG_CTRL_OFFSET);
}
