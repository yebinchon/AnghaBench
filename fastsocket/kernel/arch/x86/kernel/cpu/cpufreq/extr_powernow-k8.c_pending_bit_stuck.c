
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CPU_HW_PSTATE ;
 int MSR_FIDVID_STATUS ;
 int MSR_S_LO_CHANGE_PENDING ;
 scalar_t__ cpu_family ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static int pending_bit_stuck(void)
{
 u32 lo, hi;

 if (cpu_family == CPU_HW_PSTATE)
  return 0;

 rdmsr(MSR_FIDVID_STATUS, lo, hi);
 return lo & MSR_S_LO_CHANGE_PENDING ? 1 : 0;
}
