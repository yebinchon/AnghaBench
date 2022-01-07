
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_bit; int name; } ;


 int CM_CLKEN ;
 int CM_IDLEST ;
 int EN_APLL_LOCKED ;
 int OMAP24XX_ST_54M_APLL ;
 int OMAP24XX_ST_96M_APLL ;
 int OMAP_CM_REGADDR (int ,int ) ;
 int PLL_MOD ;
 struct clk apll54_ck ;
 struct clk apll96_ck ;
 int cm_read_mod_reg (int ,int ) ;
 int cm_write_mod_reg (int,int ,int ) ;
 int omap2_cm_wait_idlest (int ,int,int ) ;

__attribute__((used)) static int omap2_clk_fixed_enable(struct clk *clk)
{
 u32 cval, apll_mask;

 apll_mask = EN_APLL_LOCKED << clk->enable_bit;

 cval = cm_read_mod_reg(PLL_MOD, CM_CLKEN);

 if ((cval & apll_mask) == apll_mask)
  return 0;

 cval &= ~apll_mask;
 cval |= apll_mask;
 cm_write_mod_reg(cval, PLL_MOD, CM_CLKEN);

 if (clk == &apll96_ck)
  cval = OMAP24XX_ST_96M_APLL;
 else if (clk == &apll54_ck)
  cval = OMAP24XX_ST_54M_APLL;

 omap2_cm_wait_idlest(OMAP_CM_REGADDR(PLL_MOD, CM_IDLEST), cval,
        clk->name);





 return 0;
}
