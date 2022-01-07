
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ throttling; } ;
struct acpi_processor {TYPE_2__ throttling; TYPE_1__ flags; int id; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 unsigned long cpufreq_get_cur_state (int ) ;

__attribute__((used)) static int
processor_get_cur_state(struct thermal_cooling_device *cdev,
   unsigned long *cur_state)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_processor *pr = acpi_driver_data(device);

 if (!device || !pr)
  return -EINVAL;

 *cur_state = cpufreq_get_cur_state(pr->id);
 if (pr->flags.throttling)
  *cur_state += pr->throttling.state;
 return 0;
}
