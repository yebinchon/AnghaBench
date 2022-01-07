
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ HV_EOK ;
 int HV_N2_PERF_SPARC_CTL ;
 unsigned long sun4v_niagara2_setperf (int ,scalar_t__) ;
 int write_pcr (scalar_t__) ;

__attribute__((used)) static void n2_pcr_write(u64 val)
{
 unsigned long ret;

 ret = sun4v_niagara2_setperf(HV_N2_PERF_SPARC_CTL, val);
 if (val != HV_EOK)
  write_pcr(val);
}
