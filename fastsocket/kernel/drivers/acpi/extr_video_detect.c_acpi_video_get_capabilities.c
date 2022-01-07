
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int * ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int acpi_bus_get_device (int *,struct acpi_device**) ;
 char* acpi_device_bid (struct acpi_device*) ;
 int acpi_video_caps_checked ;
 long acpi_video_support ;
 int acpi_walk_namespace (int ,int *,int ,int ,long*,int *) ;
 int find_video ;

long acpi_video_get_capabilities(acpi_handle graphics_handle)
{
 long caps = 0;
 struct acpi_device *tmp_dev;
 acpi_status status;

 if (acpi_video_caps_checked && graphics_handle == ((void*)0))
  return acpi_video_support;

 if (!graphics_handle) {

  acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, find_video,
        &caps, ((void*)0));

  acpi_video_support |= caps;
  acpi_video_caps_checked = 1;
 } else {
  status = acpi_bus_get_device(graphics_handle, &tmp_dev);
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status, "Invalid device"));
   return 0;
  }
  acpi_walk_namespace(ACPI_TYPE_DEVICE, graphics_handle,
        ACPI_UINT32_MAX, find_video,
        &caps, ((void*)0));
 }
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "We have 0x%lX video support %s %s\n",
     graphics_handle ? caps : acpi_video_support,
     graphics_handle ? "on device " : "in general",
     graphics_handle ? acpi_device_bid(tmp_dev) : ""));
 return caps;
}
