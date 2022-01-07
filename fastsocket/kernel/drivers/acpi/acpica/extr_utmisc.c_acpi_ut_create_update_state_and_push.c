
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_generic_state* acpi_ut_create_update_state (union acpi_operand_object*,int ) ;
 int acpi_ut_push_generic_state (union acpi_generic_state**,union acpi_generic_state*) ;

acpi_status
acpi_ut_create_update_state_and_push(union acpi_operand_object *object,
         u16 action,
         union acpi_generic_state **state_list)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_ENTRY();



 if (!object) {
  return (AE_OK);
 }

 state = acpi_ut_create_update_state(object, action);
 if (!state) {
  return (AE_NO_MEMORY);
 }

 acpi_ut_push_generic_state(state_list, state);
 return (AE_OK);
}
