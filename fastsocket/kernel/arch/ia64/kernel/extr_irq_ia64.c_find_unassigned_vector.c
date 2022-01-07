
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int EINVAL ;
 int ENOSPC ;
 int IA64_FIRST_DEVICE_VECTOR ;
 int IA64_NUM_DEVICE_VECTORS ;
 int cpu_online_map ;
 int cpus_and (int ,int ,int ) ;
 scalar_t__ cpus_empty (int ) ;
 int * vector_table ;

__attribute__((used)) static inline int find_unassigned_vector(cpumask_t domain)
{
 cpumask_t mask;
 int pos, vector;

 cpus_and(mask, domain, cpu_online_map);
 if (cpus_empty(mask))
  return -EINVAL;

 for (pos = 0; pos < IA64_NUM_DEVICE_VECTORS; pos++) {
  vector = IA64_FIRST_DEVICE_VECTOR + pos;
  cpus_and(mask, domain, vector_table[vector]);
  if (!cpus_empty(mask))
   continue;
  return vector;
 }
 return -ENOSPC;
}
