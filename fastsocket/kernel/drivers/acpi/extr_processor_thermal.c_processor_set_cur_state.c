
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ throttling; } ;
struct acpi_processor {int id; TYPE_2__ throttling; TYPE_1__ flags; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 unsigned long acpi_processor_max_state (struct acpi_processor*) ;
 int acpi_processor_set_throttling (struct acpi_processor*,unsigned long,int) ;
 int cpufreq_get_max_state (int ) ;
 int cpufreq_set_cur_state (int ,int) ;

__attribute__((used)) static int
processor_set_cur_state(struct thermal_cooling_device *cdev,
   unsigned long state)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_processor *pr = acpi_driver_data(device);
 int result = 0;
 int max_pstate;

 if (!device || !pr)
  return -EINVAL;

 max_pstate = cpufreq_get_max_state(pr->id);

 if (state > acpi_processor_max_state(pr))
  return -EINVAL;

 if (state <= max_pstate) {
  if (pr->flags.throttling && pr->throttling.state)
   result = acpi_processor_set_throttling(pr, 0, 0);
  cpufreq_set_cur_state(pr->id, state);
 } else {
  cpufreq_set_cur_state(pr->id, max_pstate);
  result = acpi_processor_set_throttling(pr,
    state - max_pstate, 0);
 }
 return result;
}
