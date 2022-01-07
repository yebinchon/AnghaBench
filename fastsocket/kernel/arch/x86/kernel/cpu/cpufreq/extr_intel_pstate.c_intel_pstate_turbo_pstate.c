
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u64 ;


 int MSR_NHM_TURBO_RATIO_LIMIT ;
 int intel_pstate_max_pstate () ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static int intel_pstate_turbo_pstate(void)
{
 u64 value;
 int nont, ret;
 rdmsrl(MSR_NHM_TURBO_RATIO_LIMIT, value);
 nont = intel_pstate_max_pstate();
 ret = ((value) & 255);
 if (ret <= nont)
  ret = nont;
 return ret;
}
