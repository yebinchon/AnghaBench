
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_bit; } ;


 int CM_CLKEN ;
 int EN_APLL_LOCKED ;
 int PLL_MOD ;
 int cm_read_mod_reg (int ,int ) ;
 int cm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static void omap2_clk_fixed_disable(struct clk *clk)
{
 u32 cval;

 cval = cm_read_mod_reg(PLL_MOD, CM_CLKEN);
 cval &= ~(EN_APLL_LOCKED << clk->enable_bit);
 cm_write_mod_reg(cval, PLL_MOD, CM_CLKEN);
}
