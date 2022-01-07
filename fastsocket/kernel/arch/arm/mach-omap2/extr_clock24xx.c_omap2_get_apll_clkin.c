
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int APLLS_CLKIN_12MHZ ;
 int APLLS_CLKIN_13MHZ ;
 int APLLS_CLKIN_19_2MHZ ;
 int CM_CLKSEL1 ;
 int OMAP24XX_APLLS_CLKIN_MASK ;
 int OMAP24XX_APLLS_CLKIN_SHIFT ;
 int PLL_MOD ;
 int cm_read_mod_reg (int ,int ) ;

__attribute__((used)) static u32 omap2_get_apll_clkin(void)
{
 u32 aplls, srate = 0;

 aplls = cm_read_mod_reg(PLL_MOD, CM_CLKSEL1);
 aplls &= OMAP24XX_APLLS_CLKIN_MASK;
 aplls >>= OMAP24XX_APLLS_CLKIN_SHIFT;

 if (aplls == APLLS_CLKIN_19_2MHZ)
  srate = 19200000;
 else if (aplls == APLLS_CLKIN_13MHZ)
  srate = 13000000;
 else if (aplls == APLLS_CLKIN_12MHZ)
  srate = 12000000;

 return srate;
}
