
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int processorCount; } ;


 int any_online_cpu (int ) ;
 int boot_cpuid ;
 int cpu_online_map ;
 int set_cpu_online (int,int) ;
 int smp_processor_id () ;
 TYPE_1__* vdso_data ;
 int xics_migrate_irqs_away () ;

__attribute__((used)) static int pseries_cpu_disable(void)
{
 int cpu = smp_processor_id();

 set_cpu_online(cpu, 0);
 vdso_data->processorCount--;


 if (cpu == boot_cpuid)
  boot_cpuid = any_online_cpu(cpu_online_map);


 xics_migrate_irqs_away();
 return 0;
}
