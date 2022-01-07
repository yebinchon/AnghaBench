
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R14_24XX_MCBSP2_FSX ;
 int V14_24XX_GPIO117 ;
 int V15_24XX_MCBSP2_DX ;
 int W15_24XX_MCBSP2_DR ;
 int Y15_24XX_MCBSP2_CLKX ;
 int omap_cfg_reg (int ) ;

__attribute__((used)) static void omap2_mcbsp2_mux_setup(void)
{
 omap_cfg_reg(Y15_24XX_MCBSP2_CLKX);
 omap_cfg_reg(R14_24XX_MCBSP2_FSX);
 omap_cfg_reg(W15_24XX_MCBSP2_DR);
 omap_cfg_reg(V15_24XX_MCBSP2_DX);
 omap_cfg_reg(V14_24XX_GPIO117);



}
