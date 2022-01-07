
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {TYPE_1__ flags; int id; } ;


 unsigned long CPU_DEAD ;
 unsigned long CPU_ONLINE ;
 int NOTIFY_OK ;
 int WARN (int ,char*,int ) ;
 int acpi_processor_cst_has_changed (struct acpi_processor*) ;
 int acpi_processor_ppc_has_changed (struct acpi_processor*) ;
 int acpi_processor_reevaluate_tstate (struct acpi_processor*,unsigned long) ;
 int acpi_processor_start (struct acpi_processor*) ;
 int acpi_processor_tstate_has_changed (struct acpi_processor*) ;
 struct acpi_processor* per_cpu (int ,unsigned int) ;
 int pr_info (char*,int ) ;
 int processors ;

__attribute__((used)) static int acpi_cpu_soft_notify(struct notifier_block *nfb,
  unsigned long action, void *hcpu)
{
 unsigned int cpu = (unsigned long)hcpu;
 struct acpi_processor *pr = per_cpu(processors, cpu);

 if (action == CPU_ONLINE && pr) {



  if (pr->flags.need_hotplug_init) {
   pr_info("Will online and init hotplugged CPU: %d\n",
    pr->id);
   WARN(acpi_processor_start(pr), "Failed to start CPU:"
    " %d\n", pr->id);
   pr->flags.need_hotplug_init = 0;

  } else {
   acpi_processor_ppc_has_changed(pr);
   acpi_processor_cst_has_changed(pr);
   acpi_processor_reevaluate_tstate(pr, action);
   acpi_processor_tstate_has_changed(pr);
  }
 }
 if (action == CPU_DEAD && pr) {

  acpi_processor_reevaluate_tstate(pr, action);
 }

 return NOTIFY_OK;
}
