
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int suspend_state_t ;


 int EINVAL ;
 int PM_SUSPEND_MAX ;
 int PM_SUSPEND_MEM ;
 int PM_SUSPEND_STANDBY ;
 int hibernate () ;
 int pm_suspend (int) ;

int acpi_suspend(u32 acpi_state)
{
 suspend_state_t states[] = {
  [1] = PM_SUSPEND_STANDBY,
  [3] = PM_SUSPEND_MEM,
  [5] = PM_SUSPEND_MAX
 };

 if (acpi_state < 6 && states[acpi_state])
  return pm_suspend(states[acpi_state]);
 if (acpi_state == 4)
  return hibernate();
 return -EINVAL;
}
