
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct TYPE_15__ {int count; int * handles; } ;
struct TYPE_21__ {int count; int * handles; } ;
struct TYPE_20__ {scalar_t__ valid; } ;
struct TYPE_22__ {TYPE_6__ devices; TYPE_5__ flags; } ;
struct TYPE_18__ {scalar_t__ valid; } ;
struct TYPE_19__ {TYPE_3__ flags; } ;
struct TYPE_16__ {scalar_t__ valid; } ;
struct TYPE_17__ {TYPE_1__ flags; } ;
struct TYPE_14__ {TYPE_10__* active; TYPE_7__ passive; TYPE_4__ hot; TYPE_2__ critical; } ;
struct acpi_thermal {TYPE_12__ devices; TYPE_11__ trips; } ;
struct acpi_device {int dummy; } ;
typedef int (* cb ) (struct thermal_zone_device*,int,struct thermal_cooling_device*) ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_24__ {int count; int * handles; } ;
struct TYPE_23__ {int valid; } ;
struct TYPE_13__ {TYPE_9__ devices; TYPE_8__ flags; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_THERMAL_MAX_ACTIVE ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;

__attribute__((used)) static int acpi_thermal_cooling_device_cb(struct thermal_zone_device *thermal,
     struct thermal_cooling_device *cdev,
     cb action)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_thermal *tz = thermal->devdata;
 struct acpi_device *dev;
 acpi_status status;
 acpi_handle handle;
 int i;
 int j;
 int trip = -1;
 int result = 0;

 if (tz->trips.critical.flags.valid)
  trip++;

 if (tz->trips.hot.flags.valid)
  trip++;

 if (tz->trips.passive.flags.valid) {
  trip++;
  for (i = 0; i < tz->trips.passive.devices.count;
      i++) {
   handle = tz->trips.passive.devices.handles[i];
   status = acpi_bus_get_device(handle, &dev);
   if (ACPI_SUCCESS(status) && (dev == device)) {
    result = action(thermal, trip, cdev);
    if (result)
     goto failed;
   }
  }
 }

 for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE; i++) {
  if (!tz->trips.active[i].flags.valid)
   break;
  trip++;
  for (j = 0;
      j < tz->trips.active[i].devices.count;
      j++) {
   handle = tz->trips.active[i].devices.handles[j];
   status = acpi_bus_get_device(handle, &dev);
   if (ACPI_SUCCESS(status) && (dev == device)) {
    result = action(thermal, trip, cdev);
    if (result)
     goto failed;
   }
  }
 }

 for (i = 0; i < tz->devices.count; i++) {
  handle = tz->devices.handles[i];
  status = acpi_bus_get_device(handle, &dev);
  if (ACPI_SUCCESS(status) && (dev == device)) {
   result = action(thermal, -1, cdev);
   if (result)
    goto failed;
  }
 }

failed:
 return result;
}
