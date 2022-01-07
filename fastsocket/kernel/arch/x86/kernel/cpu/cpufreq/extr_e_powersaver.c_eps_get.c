
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eps_cpu_data {int fsb; } ;


 int MSR_IA32_PERF_STATUS ;
 struct eps_cpu_data** eps_cpu ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static unsigned int eps_get(unsigned int cpu)
{
 struct eps_cpu_data *centaur;
 u32 lo, hi;

 if (cpu)
  return 0;
 centaur = eps_cpu[cpu];
 if (centaur == ((void*)0))
  return 0;


 rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
 return centaur->fsb * ((lo >> 8) & 0xff);
}
