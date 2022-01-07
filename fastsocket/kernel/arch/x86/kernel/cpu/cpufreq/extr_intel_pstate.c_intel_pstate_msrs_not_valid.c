
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int ENODEV ;
 int MSR_IA32_APERF ;
 int MSR_IA32_MPERF ;
 int intel_pstate_max_pstate () ;
 int intel_pstate_min_pstate () ;
 int intel_pstate_turbo_pstate () ;
 int rdmsrl (int ,scalar_t__) ;

__attribute__((used)) static int intel_pstate_msrs_not_valid(void)
{

 u64 aperf, mperf, tmp;

 rdmsrl(MSR_IA32_APERF, aperf);
 rdmsrl(MSR_IA32_MPERF, mperf);

 if (!intel_pstate_min_pstate() ||
  !intel_pstate_max_pstate() ||
  !intel_pstate_turbo_pstate())
  return -ENODEV;

 rdmsrl(MSR_IA32_APERF, tmp);
 if (!(tmp - aperf))
  return -ENODEV;

 rdmsrl(MSR_IA32_MPERF, tmp);
 if (!(tmp - mperf))
  return -ENODEV;

 return 0;
}
