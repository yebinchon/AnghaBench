
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_video_device {TYPE_1__* brightness; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int count; } ;


 struct acpi_video_device* acpi_driver_data (struct acpi_device*) ;

__attribute__((used)) static int video_get_max_state(struct thermal_cooling_device *cooling_dev, unsigned
          long *state)
{
 struct acpi_device *device = cooling_dev->devdata;
 struct acpi_video_device *video = acpi_driver_data(device);

 *state = video->brightness->count - 3;
 return 0;
}
