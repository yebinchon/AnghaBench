
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_PERF_CTL ;
 int MSR_IA32_PERF_STATUS ;
 unsigned int extract_clock (unsigned int,unsigned int,int) ;
 int rdmsr_on_cpu (unsigned int,int ,unsigned int*,unsigned int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int get_cur_freq(unsigned int cpu)
{
 unsigned l, h;
 unsigned clock_freq;

 rdmsr_on_cpu(cpu, MSR_IA32_PERF_STATUS, &l, &h);
 clock_freq = extract_clock(l, cpu, 0);

 if (unlikely(clock_freq == 0)) {






  rdmsr_on_cpu(cpu, MSR_IA32_PERF_CTL, &l, &h);
  clock_freq = extract_clock(l, cpu, 1);
 }
 return clock_freq;
}
