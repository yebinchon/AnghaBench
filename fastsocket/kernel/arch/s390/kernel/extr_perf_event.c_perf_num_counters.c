
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PERF_CPUM_CF_MAX_CTR ;
 scalar_t__ cpum_cf_avail () ;

int perf_num_counters(void)
{
 int num = 0;

 if (cpum_cf_avail())
  num += PERF_CPUM_CF_MAX_CTR;

 return num;
}
