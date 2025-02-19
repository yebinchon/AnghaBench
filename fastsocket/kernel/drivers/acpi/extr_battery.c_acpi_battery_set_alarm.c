
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_battery {int alarm; int lock; TYPE_2__* device; int alarm_present; } ;
typedef int acpi_status ;
struct TYPE_4__ {int handle; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ENODEV ;
 int acpi_battery_present (struct acpi_battery*) ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_battery_set_alarm(struct acpi_battery *battery)
{
 acpi_status status = 0;
 union acpi_object arg0 = { .type = ACPI_TYPE_INTEGER };
 struct acpi_object_list arg_list = { 1, &arg0 };

 if (!acpi_battery_present(battery)|| !battery->alarm_present)
  return -ENODEV;

 arg0.integer.value = battery->alarm;

 mutex_lock(&battery->lock);
 status = acpi_evaluate_object(battery->device->handle, "_BTP",
     &arg_list, ((void*)0));
 mutex_unlock(&battery->lock);

 if (ACPI_FAILURE(status))
  return -ENODEV;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Alarm set to %d\n", battery->alarm));
 return 0;
}
