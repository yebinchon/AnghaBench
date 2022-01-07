
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuid_t ;
typedef int cnodeid_t ;


 int CPUID_TO_COMPACT_NODEID (int ) ;

cnodeid_t get_cpu_cnode(cpuid_t cpu)
{
 return CPUID_TO_COMPACT_NODEID(cpu);
}
