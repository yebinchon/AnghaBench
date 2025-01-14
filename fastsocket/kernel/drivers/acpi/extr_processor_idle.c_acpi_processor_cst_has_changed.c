
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ power; int power_setup_done; } ;
struct acpi_processor {TYPE_2__ power; TYPE_1__ flags; } ;


 int EINVAL ;
 int ENODEV ;
 int acpi_processor_get_power_info (struct acpi_processor*) ;
 int acpi_processor_setup_cpuidle (struct acpi_processor*) ;
 scalar_t__ boot_option_idle_override ;
 int cpuidle_disable_device (int *) ;
 int cpuidle_enable_device (int *) ;
 int cpuidle_pause_and_lock () ;
 int cpuidle_resume_and_unlock () ;
 scalar_t__ nocst ;

int acpi_processor_cst_has_changed(struct acpi_processor *pr)
{
 int ret = 0;

 if (boot_option_idle_override)
  return 0;

 if (!pr)
  return -EINVAL;

 if (nocst) {
  return -ENODEV;
 }

 if (!pr->flags.power_setup_done)
  return -ENODEV;

 cpuidle_pause_and_lock();
 cpuidle_disable_device(&pr->power.dev);
 acpi_processor_get_power_info(pr);
 if (pr->flags.power) {
  acpi_processor_setup_cpuidle(pr);
  ret = cpuidle_enable_device(&pr->power.dev);
 }
 cpuidle_resume_and_unlock();

 return ret;
}
