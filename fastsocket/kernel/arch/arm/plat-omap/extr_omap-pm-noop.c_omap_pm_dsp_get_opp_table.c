
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_opp {int dummy; } ;


 int pr_debug (char*) ;

const struct omap_opp *omap_pm_dsp_get_opp_table(void)
{
 pr_debug("OMAP PM: DSP request for OPP table\n");






 return ((void*)0);
}
