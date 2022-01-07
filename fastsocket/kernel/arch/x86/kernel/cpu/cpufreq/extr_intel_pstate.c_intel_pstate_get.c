
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample {unsigned int freq; } ;
struct cpudata {size_t sample_ptr; struct sample* samples; } ;


 struct cpudata** all_cpu_data ;

__attribute__((used)) static unsigned int intel_pstate_get(unsigned int cpu_num)
{
 struct sample *sample;
 struct cpudata *cpu;

 cpu = all_cpu_data[cpu_num];
 if (!cpu)
  return 0;
 sample = &cpu->samples[cpu->sample_ptr];
 return sample->freq;
}
