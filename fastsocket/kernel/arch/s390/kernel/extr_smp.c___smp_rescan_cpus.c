
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int cpu_possible_map ;
 int cpu_present_map ;
 int cpus_xor (int ,int ,int ) ;
 int smp_rescan_cpus_sclp (int ) ;
 int smp_rescan_cpus_sigp (int ) ;
 scalar_t__ smp_use_sigp_detection ;

__attribute__((used)) static int __smp_rescan_cpus(void)
{
 cpumask_t avail;

 cpus_xor(avail, cpu_possible_map, cpu_present_map);
 if (smp_use_sigp_detection)
  return smp_rescan_cpus_sigp(avail);
 else
  return smp_rescan_cpus_sclp(avail);
}
