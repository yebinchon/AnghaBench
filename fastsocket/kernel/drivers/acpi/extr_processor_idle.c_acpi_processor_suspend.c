
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int pm_message_t ;


 int acpi_idle_bm_rld_save () ;
 int acpi_idle_suspend ;

int acpi_processor_suspend(struct acpi_device * device, pm_message_t state)
{
 if (acpi_idle_suspend == 1)
  return 0;

 acpi_idle_bm_rld_save();
 acpi_idle_suspend = 1;
 return 0;
}
