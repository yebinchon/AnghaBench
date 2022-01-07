
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_4__ {int value; union acpi_operand_object* object; } ;
struct TYPE_3__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_2__ update; TYPE_1__ common; } ;
typedef int u16 ;


 int ACPI_DESC_TYPE_STATE_UPDATE ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int return_PTR (union acpi_generic_state*) ;
 int ut_create_update_state ;

union acpi_generic_state *acpi_ut_create_update_state(union acpi_operand_object
            *object, u16 action)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_TRACE_PTR(ut_create_update_state, object);



 state = acpi_ut_create_generic_state();
 if (!state) {
  return_PTR(((void*)0));
 }



 state->common.descriptor_type = ACPI_DESC_TYPE_STATE_UPDATE;
 state->update.object = object;
 state->update.value = action;

 return_PTR(state);
}
