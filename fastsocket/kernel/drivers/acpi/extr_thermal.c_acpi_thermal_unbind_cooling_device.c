
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;


 int acpi_thermal_cooling_device_cb (struct thermal_zone_device*,struct thermal_cooling_device*,int ) ;
 int thermal_zone_unbind_cooling_device ;

__attribute__((used)) static int
acpi_thermal_unbind_cooling_device(struct thermal_zone_device *thermal,
     struct thermal_cooling_device *cdev)
{
 return acpi_thermal_cooling_device_cb(thermal, cdev,
    thermal_zone_unbind_cooling_device);
}
