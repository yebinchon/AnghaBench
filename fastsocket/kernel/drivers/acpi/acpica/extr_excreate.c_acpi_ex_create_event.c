
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_semaphore; } ;
union acpi_operand_object {TYPE_1__ event; } ;
struct acpi_walk_state {scalar_t__* operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NO_UNIT_LIMIT ;
 int ACPI_TYPE_EVENT ;
 int AE_NO_MEMORY ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 int acpi_os_create_semaphore (int ,int ,int *) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_event ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_create_event(struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ex_create_event);

 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_EVENT);
 if (!obj_desc) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }





 status = acpi_os_create_semaphore(ACPI_NO_UNIT_LIMIT, 0,
       &obj_desc->event.os_semaphore);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }



 status =
     acpi_ns_attach_object((struct acpi_namespace_node *)walk_state->
      operands[0], obj_desc, ACPI_TYPE_EVENT);

      cleanup:




 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
