
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cpufreq_frequency_table {size_t frequency; } ;


 size_t* ps_to_as ;

__attribute__((used)) static u32 find_khz_freq_from_pstate(struct cpufreq_frequency_table *data,
  u32 pstate)
{
 return data[ps_to_as[pstate]].frequency;
}
