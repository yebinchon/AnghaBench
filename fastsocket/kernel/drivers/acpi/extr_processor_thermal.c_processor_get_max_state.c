
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_processor {int dummy; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 unsigned long acpi_processor_max_state (struct acpi_processor*) ;

__attribute__((used)) static int
processor_get_max_state(struct thermal_cooling_device *cdev,
   unsigned long *state)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_processor *pr = acpi_driver_data(device);

 if (!device || !pr)
  return -EINVAL;

 *state = acpi_processor_max_state(pr);
 return 0;
}
