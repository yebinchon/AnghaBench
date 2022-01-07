
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_APICID ;
 int* cpu_2_logical_apicid ;
 int logical_smp_processor_id () ;
 int nr_cpu_ids ;

__attribute__((used)) static int es7000_cpu_to_logical_apicid(int cpu)
{





 return logical_smp_processor_id();

}
