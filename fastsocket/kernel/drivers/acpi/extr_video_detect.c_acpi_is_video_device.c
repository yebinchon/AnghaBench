
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 long ACPI_VIDEO_DEVICE_POSTING ;
 long ACPI_VIDEO_OUTPUT_SWITCHING ;
 long ACPI_VIDEO_ROM_AVAILABLE ;
 int acpi_backlight_cap_match ;
 int acpi_get_handle (int ,char*,int *) ;
 int acpi_walk_namespace (int ,int ,int ,int ,long*,int *) ;

long acpi_is_video_device(struct acpi_device *device)
{
 acpi_handle h_dummy;
 long video_caps = 0;

 if (!device)
  return 0;


 if (ACPI_SUCCESS(acpi_get_handle(device->handle, "_DOD", &h_dummy)) ||
     ACPI_SUCCESS(acpi_get_handle(device->handle, "_DOS", &h_dummy)))
  video_caps |= ACPI_VIDEO_OUTPUT_SWITCHING;


 if (ACPI_SUCCESS(acpi_get_handle(device->handle, "_ROM", &h_dummy)))
  video_caps |= ACPI_VIDEO_ROM_AVAILABLE;


 if (ACPI_SUCCESS(acpi_get_handle(device->handle, "_VPO", &h_dummy)) &&
     ACPI_SUCCESS(acpi_get_handle(device->handle, "_GPD", &h_dummy)) &&
     ACPI_SUCCESS(acpi_get_handle(device->handle, "_SPD", &h_dummy)))
  video_caps |= ACPI_VIDEO_DEVICE_POSTING;


 if (video_caps)
  acpi_walk_namespace(ACPI_TYPE_DEVICE, device->handle,
        ACPI_UINT32_MAX, acpi_backlight_cap_match,
        &video_caps, ((void*)0));

 return video_caps;
}
