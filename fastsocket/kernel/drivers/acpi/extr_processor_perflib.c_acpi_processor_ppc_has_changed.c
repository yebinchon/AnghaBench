
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int id; } ;


 int acpi_processor_get_platform_limit (struct acpi_processor*) ;
 int cpufreq_update_policy (int ) ;
 scalar_t__ ignore_ppc ;

int acpi_processor_ppc_has_changed(struct acpi_processor *pr)
{
 int ret;

 if (ignore_ppc)
  return 0;

 ret = acpi_processor_get_platform_limit(pr);

 if (ret < 0)
  return (ret);
 else
  return cpufreq_update_policy(pr->id);
}
