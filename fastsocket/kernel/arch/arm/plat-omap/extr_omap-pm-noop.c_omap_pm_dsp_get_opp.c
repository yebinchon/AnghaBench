
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int pr_debug (char*) ;

u8 omap_pm_dsp_get_opp(void)
{
 pr_debug("OMAP PM: DSP requests current DSP OPP ID\n");
 return 0;
}
