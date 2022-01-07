
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_device_id {char* member_0; int member_1; } ;
struct TYPE_6__ {scalar_t__ wake_capable; } ;
struct TYPE_4__ {int valid; int run_wake; } ;
struct TYPE_5__ {TYPE_1__ flags; scalar_t__ prepare_count; } ;
struct acpi_device {TYPE_3__ flags; TYPE_2__ wakeup; int handle; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int acpi_bus_extract_wakeup_device_power_package (struct acpi_device*,union acpi_object*) ;
 int acpi_device_sleep_wake (struct acpi_device*,int ,int ,int ) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int acpi_match_device_ids (struct acpi_device*,struct acpi_device_id*) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static int acpi_bus_get_wakeup_device_flags(struct acpi_device *device)
{
 acpi_status status = 0;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *package = ((void*)0);
 int psw_error;

 struct acpi_device_id button_device_ids[] = {
  {"PNP0C0D", 0},
  {"PNP0C0C", 0},
  {"PNP0C0E", 0},
  {"", 0},
 };


 status = acpi_evaluate_object(device->handle, "_PRW", ((void*)0), &buffer);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PRW"));
  goto end;
 }

 package = (union acpi_object *)buffer.pointer;
 status = acpi_bus_extract_wakeup_device_power_package(device, package);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Extracting _PRW package"));
  goto end;
 }

 kfree(buffer.pointer);

 device->wakeup.flags.valid = 1;
 device->wakeup.prepare_count = 0;






 psw_error = acpi_device_sleep_wake(device, 0, 0, 0);
 if (psw_error)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
    "error in _DSW or _PSW evaluation\n"));


 if (!acpi_match_device_ids(device, button_device_ids))
  device->wakeup.flags.run_wake = 1;

end:
 if (ACPI_FAILURE(status))
  device->flags.wake_capable = 0;
 return 0;
}
