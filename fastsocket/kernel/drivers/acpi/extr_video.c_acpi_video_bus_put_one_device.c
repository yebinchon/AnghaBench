
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct acpi_video_device {int output_dev; TYPE_4__* cooling_dev; TYPE_6__* dev; TYPE_5__* backlight; struct acpi_video_bus* video; } ;
struct acpi_video_bus {int dummy; } ;
typedef int acpi_status ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_12__ {TYPE_2__ dev; int handle; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_11__ {TYPE_1__ dev; } ;
struct TYPE_9__ {int kobj; } ;
struct TYPE_10__ {TYPE_3__ device; } ;


 int ACPI_DEVICE_NOTIFY ;
 int ENOENT ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_video_device_notify ;
 int acpi_video_device_remove_fs (TYPE_6__*) ;
 int backlight_device_unregister (TYPE_5__*) ;
 int sysfs_remove_link (int *,char*) ;
 int thermal_cooling_device_unregister (TYPE_4__*) ;
 int video_output_unregister (int ) ;

__attribute__((used)) static int acpi_video_bus_put_one_device(struct acpi_video_device *device)
{
 acpi_status status;
 struct acpi_video_bus *video;


 if (!device || !device->video)
  return -ENOENT;

 video = device->video;

 acpi_video_device_remove_fs(device->dev);

 status = acpi_remove_notify_handler(device->dev->handle,
         ACPI_DEVICE_NOTIFY,
         acpi_video_device_notify);
 if (device->backlight) {
  sysfs_remove_link(&device->backlight->dev.kobj, "device");
  backlight_device_unregister(device->backlight);
  device->backlight = ((void*)0);
 }
 if (device->cooling_dev) {
  sysfs_remove_link(&device->dev->dev.kobj,
      "thermal_cooling");
  sysfs_remove_link(&device->cooling_dev->device.kobj,
      "device");
  thermal_cooling_device_unregister(device->cooling_dev);
  device->cooling_dev = ((void*)0);
 }
 video_output_unregister(device->output_dev);

 return 0;
}
