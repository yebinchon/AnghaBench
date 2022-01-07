
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int ACPI_VALID_HID ;
 int AE_OK ;


 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int container_notify_cb ;
 int kfree (struct acpi_device_info*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static acpi_status
container_walk_namespace_cb(acpi_handle handle,
       u32 lvl, void *context, void **rv)
{
 char *hid = ((void*)0);
 struct acpi_device_info *info;
 acpi_status status;
 int *action = context;

 status = acpi_get_object_info(handle, &info);
 if (ACPI_FAILURE(status)) {
  return AE_OK;
 }

 if (info->valid & ACPI_VALID_HID)
  hid = info->hardware_id.string;

 if (hid == ((void*)0)) {
  goto end;
 }

 if (strcmp(hid, "ACPI0004") && strcmp(hid, "PNP0A05") &&
     strcmp(hid, "PNP0A06")) {
  goto end;
 }

 switch (*action) {
 case 129:
  acpi_install_notify_handler(handle,
         ACPI_SYSTEM_NOTIFY,
         container_notify_cb, ((void*)0));
  break;
 case 128:
  acpi_remove_notify_handler(handle,
        ACPI_SYSTEM_NOTIFY,
        container_notify_cb);
  break;
 default:
  break;
 }

      end:
 kfree(info);

 return AE_OK;
}
