
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_APICID ;
 int cpu_physical_id (int) ;
 int nr_cpu_ids ;

__attribute__((used)) static inline int bigsmp_cpu_to_logical_apicid(int cpu)
{
 if (cpu >= nr_cpu_ids)
  return BAD_APICID;
 return cpu_physical_id(cpu);
}
