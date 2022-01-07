
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ds; } ;


 int MSR_IA32_DS_AREA ;
 int cpu_hw_events ;
 TYPE_1__ per_cpu (int ,int) ;
 int wrmsr_on_cpu (int,int ,int ,int ) ;

void fini_debug_store_on_cpu(int cpu)
{
 if (!per_cpu(cpu_hw_events, cpu).ds)
  return;

 wrmsr_on_cpu(cpu, MSR_IA32_DS_AREA, 0, 0);
}
