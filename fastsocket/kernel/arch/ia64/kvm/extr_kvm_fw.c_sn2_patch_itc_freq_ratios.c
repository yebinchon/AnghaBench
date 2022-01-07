
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pal_freq_ratio {int num; unsigned long den; } ;
struct ia64_pal_retval {int v2; int status; } ;


 int SAL_FREQ_BASE_PLATFORM ;
 int ia64_sal_freq_base (int ,unsigned long*,unsigned long*) ;
 int sn_rtc_cycles_per_second ;

__attribute__((used)) static void sn2_patch_itc_freq_ratios(struct ia64_pal_retval *result)
{
 struct pal_freq_ratio *ratio;
 unsigned long sal_freq, sal_drift, factor;

 result->status = ia64_sal_freq_base(SAL_FREQ_BASE_PLATFORM,
         &sal_freq, &sal_drift);
 ratio = (struct pal_freq_ratio *)&result->v2;
 factor = ((sal_freq * 3) + (sn_rtc_cycles_per_second / 2)) /
  sn_rtc_cycles_per_second;

 ratio->num = 3;
 ratio->den = factor;
}
