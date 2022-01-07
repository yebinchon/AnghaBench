
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int acpi_idle_bm_rld_restore () ;
 scalar_t__ acpi_idle_suspend ;

int acpi_processor_resume(struct acpi_device * device)
{
 if (acpi_idle_suspend == 0)
  return 0;

 acpi_idle_bm_rld_restore();
 acpi_idle_suspend = 0;
 return 0;
}
