
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
struct acpi_battery {int lock; TYPE_1__* device; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int ARRAY_SIZE (int ) ;
 int EFAULT ;
 int ENODEV ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int extract_package (struct acpi_battery*,int ,int ,int ) ;
 int info_offsets ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_battery_get_info(struct acpi_battery *battery)
{
 int result = -EFAULT;
 acpi_status status = 0;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 if (!acpi_battery_present(battery))
  return 0;
 mutex_lock(&battery->lock);
 status = acpi_evaluate_object(battery->device->handle, "_BIF",
          ((void*)0), &buffer);
 mutex_unlock(&battery->lock);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _BIF"));
  return -ENODEV;
 }

 result = extract_package(battery, buffer.pointer,
     info_offsets, ARRAY_SIZE(info_offsets));
 kfree(buffer.pointer);
 return result;
}
