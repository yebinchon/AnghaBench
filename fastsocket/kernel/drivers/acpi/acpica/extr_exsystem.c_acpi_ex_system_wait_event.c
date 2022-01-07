
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {int os_semaphore; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ event; } ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_ex_system_wait_semaphore (int ,int ) ;
 int ex_system_wait_event ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_system_wait_event(union acpi_operand_object *time_desc,
     union acpi_operand_object *obj_desc)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_system_wait_event);

 if (obj_desc) {
  status =
      acpi_ex_system_wait_semaphore(obj_desc->event.os_semaphore,
        (u16) time_desc->integer.
        value);
 }

 return_ACPI_STATUS(status);
}
