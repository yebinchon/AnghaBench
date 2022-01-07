
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
struct acpi_battery {int quirks; int rate_now; scalar_t__ update_time; int lock; TYPE_1__* device; } ;
typedef int s16 ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int QUIRK_SIGNED16_CURRENT ;
 int abs (int ) ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int cache_time ;
 int extract_package (struct acpi_battery*,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int kfree (int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int state_offsets ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int acpi_battery_get_state(struct acpi_battery *battery)
{
 int result = 0;
 acpi_status status = 0;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 if (!acpi_battery_present(battery))
  return 0;

 if (battery->update_time &&
     time_before(jiffies, battery->update_time +
   msecs_to_jiffies(cache_time)))
  return 0;

 mutex_lock(&battery->lock);
 status = acpi_evaluate_object(battery->device->handle, "_BST",
          ((void*)0), &buffer);
 mutex_unlock(&battery->lock);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _BST"));
  return -ENODEV;
 }

 result = extract_package(battery, buffer.pointer,
     state_offsets, ARRAY_SIZE(state_offsets));
 battery->update_time = jiffies;
 kfree(buffer.pointer);

 if ((battery->quirks & QUIRK_SIGNED16_CURRENT) &&
     battery->rate_now != -1)
  battery->rate_now = abs((s16)battery->rate_now);

 return result;
}
