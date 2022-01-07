
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_bus {struct acpi_video_bus* attached_array; int input; int pm_nb; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_video_bus* acpi_driver_data (struct acpi_device*) ;
 int acpi_video_bus_put_devices (struct acpi_video_bus*) ;
 int acpi_video_bus_remove_fs (struct acpi_device*) ;
 int acpi_video_bus_stop_devices (struct acpi_video_bus*) ;
 int input_unregister_device (int ) ;
 int kfree (struct acpi_video_bus*) ;
 int unregister_pm_notifier (int *) ;

__attribute__((used)) static int acpi_video_bus_remove(struct acpi_device *device, int type)
{
 struct acpi_video_bus *video = ((void*)0);


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 video = acpi_driver_data(device);

 unregister_pm_notifier(&video->pm_nb);

 acpi_video_bus_stop_devices(video);
 acpi_video_bus_put_devices(video);
 acpi_video_bus_remove_fs(device);

 input_unregister_device(video->input);
 kfree(video->attached_array);
 kfree(video);

 return 0;
}
