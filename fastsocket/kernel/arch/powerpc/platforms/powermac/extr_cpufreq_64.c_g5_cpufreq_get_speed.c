
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int frequency; } ;


 TYPE_1__* g5_cpu_freqs ;
 size_t g5_pmode_cur ;

__attribute__((used)) static unsigned int g5_cpufreq_get_speed(unsigned int cpu)
{
 return g5_cpu_freqs[g5_pmode_cur].frequency;
}
