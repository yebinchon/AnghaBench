
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int WARN_ON (int) ;
 int pr_debug (char*,scalar_t__) ;

void omap_pm_dsp_set_min_opp(u8 opp_id)
{
 if (opp_id == 0) {
  WARN_ON(1);
  return;
 }

 pr_debug("OMAP PM: DSP requests minimum VDD1 OPP to be %d\n", opp_id);
}
