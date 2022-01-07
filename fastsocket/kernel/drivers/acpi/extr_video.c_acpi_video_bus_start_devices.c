
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_bus {int dummy; } ;


 int acpi_video_bus_DOS (struct acpi_video_bus*,int ,int) ;

__attribute__((used)) static int acpi_video_bus_start_devices(struct acpi_video_bus *video)
{
 return acpi_video_bus_DOS(video, 0, 1);
}
