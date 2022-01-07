
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cstate_entry {TYPE_1__* states; } ;
struct acpi_processor_cx {size_t index; } ;
struct TYPE_2__ {int ecx; int eax; } ;


 int cpu_cstate_entry ;
 int mwait_idle_with_hints (int ,int ) ;
 struct cstate_entry* per_cpu_ptr (int ,unsigned int) ;
 unsigned int smp_processor_id () ;

void acpi_processor_ffh_cstate_enter(struct acpi_processor_cx *cx)
{
 unsigned int cpu = smp_processor_id();
 struct cstate_entry *percpu_entry;

 percpu_entry = per_cpu_ptr(cpu_cstate_entry, cpu);
 mwait_idle_with_hints(percpu_entry->states[cx->index].eax,
                       percpu_entry->states[cx->index].ecx);
}
