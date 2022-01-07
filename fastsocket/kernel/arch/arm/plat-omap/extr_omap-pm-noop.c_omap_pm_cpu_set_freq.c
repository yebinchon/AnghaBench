
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int pr_debug (char*,unsigned long) ;

void omap_pm_cpu_set_freq(unsigned long f)
{
 if (f == 0) {
  WARN_ON(1);
  return;
 }

 pr_debug("OMAP PM: CPUFreq requests CPU frequency to be set to %lu\n",
   f);
}
