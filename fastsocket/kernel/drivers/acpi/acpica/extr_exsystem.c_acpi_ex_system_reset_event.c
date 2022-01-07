
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_semaphore; } ;
union acpi_operand_object {TYPE_1__ event; } ;
typedef int acpi_status ;
typedef int acpi_semaphore ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_NO_UNIT_LIMIT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_os_create_semaphore (int ,int ,int *) ;
 int acpi_os_delete_semaphore (int ) ;

acpi_status acpi_ex_system_reset_event(union acpi_operand_object *obj_desc)
{
 acpi_status status = AE_OK;
 acpi_semaphore temp_semaphore;

 ACPI_FUNCTION_ENTRY();





 status =
     acpi_os_create_semaphore(ACPI_NO_UNIT_LIMIT, 0, &temp_semaphore);
 if (ACPI_SUCCESS(status)) {
  (void)acpi_os_delete_semaphore(obj_desc->event.os_semaphore);
  obj_desc->event.os_semaphore = temp_semaphore;
 }

 return (status);
}
