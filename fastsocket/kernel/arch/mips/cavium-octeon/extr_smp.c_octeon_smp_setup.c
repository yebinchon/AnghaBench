
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* __cpu_logical_map ;
 int* __cpu_number_map ;
 int cpu_possible_map ;
 int cpu_present_map ;
 int cpu_set (int,int ) ;
 int cpus_clear (int ) ;
 int cvmx_get_core_num () ;
 int octeon_get_boot_coremask () ;
 int octeon_smp_hotplug_setup () ;

__attribute__((used)) static void octeon_smp_setup(void)
{
 const int coreid = cvmx_get_core_num();
 int cpus;
 int id;

 int core_mask = octeon_get_boot_coremask();

 cpus_clear(cpu_possible_map);
 __cpu_number_map[coreid] = 0;
 __cpu_logical_map[0] = coreid;
 cpu_set(0, cpu_possible_map);

 cpus = 1;
 for (id = 0; id < 16; id++) {
  if ((id != coreid) && (core_mask & (1 << id))) {
   cpu_set(cpus, cpu_possible_map);
   __cpu_number_map[id] = cpus;
   __cpu_logical_map[cpus] = id;
   cpus++;
  }
 }
 cpu_present_map = cpu_possible_map;

 octeon_smp_hotplug_setup();
}
