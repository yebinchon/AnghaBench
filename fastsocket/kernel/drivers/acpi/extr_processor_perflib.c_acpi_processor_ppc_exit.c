
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUFREQ_POLICY_NOTIFIER ;
 int PPC_REGISTERED ;
 int acpi_ppc_notifier_block ;
 int acpi_processor_ppc_status ;
 int cpufreq_unregister_notifier (int *,int ) ;

void acpi_processor_ppc_exit(void)
{
 if (acpi_processor_ppc_status & PPC_REGISTERED)
  cpufreq_unregister_notifier(&acpi_ppc_notifier_block,
         CPUFREQ_POLICY_NOTIFIER);

 acpi_processor_ppc_status &= ~PPC_REGISTERED;
}
