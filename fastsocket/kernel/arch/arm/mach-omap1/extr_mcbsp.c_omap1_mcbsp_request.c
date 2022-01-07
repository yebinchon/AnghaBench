
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPS_RSTCT2_PER_EN ;
 int DSP_RSTCT2 ;
 int DSP_RSTCT2_WD_PER_EN ;
 int IS_ERR (int ) ;
 unsigned int OMAP_MCBSP1 ;
 unsigned int OMAP_MCBSP3 ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 int api_clk ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int dsp_clk ;
 int dsp_use ;
 int omap_dsp_request_mem () ;

__attribute__((used)) static void omap1_mcbsp_request(unsigned int id)
{




 if (id == OMAP_MCBSP1 || id == OMAP_MCBSP3) {
  if (dsp_use++ == 0) {
   api_clk = clk_get(((void*)0), "api_ck");
   dsp_clk = clk_get(((void*)0), "dsp_ck");
   if (!IS_ERR(api_clk) && !IS_ERR(dsp_clk)) {
    clk_enable(api_clk);
    clk_enable(dsp_clk);

    omap_dsp_request_mem();




    __raw_writew(__raw_readw(DSP_RSTCT2) | DPS_RSTCT2_PER_EN |
      DSP_RSTCT2_WD_PER_EN, DSP_RSTCT2);
   }
  }
 }
}
