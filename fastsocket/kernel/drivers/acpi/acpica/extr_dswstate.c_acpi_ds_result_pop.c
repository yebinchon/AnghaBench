
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_operand_object** obj_desc; } ;
union acpi_generic_state {TYPE_1__ results; } ;
typedef size_t u32 ;
struct acpi_walk_state {scalar_t__ result_count; union acpi_generic_state* results; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_RETURN_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_result_stack_pop (struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ds_result_pop ;

acpi_status
acpi_ds_result_pop(union acpi_operand_object **object,
     struct acpi_walk_state *walk_state)
{
 u32 index;
 union acpi_generic_state *state;
 acpi_status status;

 ACPI_FUNCTION_NAME(ds_result_pop);

 state = walk_state->results;



 if (state && !walk_state->result_count) {
  ACPI_ERROR((AE_INFO, "No results on result stack"));
  return (AE_AML_INTERNAL);
 }

 if (!state && walk_state->result_count) {
  ACPI_ERROR((AE_INFO, "No result state for result stack"));
  return (AE_AML_INTERNAL);
 }



 if (!state) {
  ACPI_ERROR((AE_INFO, "Result stack is empty! State=%p",
       walk_state));
  return (AE_AML_NO_RETURN_VALUE);
 }



 walk_state->result_count--;
 index = (u32)walk_state->result_count % ACPI_RESULTS_FRAME_OBJ_NUM;

 *object = state->results.obj_desc[index];
 if (!*object) {
  ACPI_ERROR((AE_INFO,
       "No result objects on result stack, State=%p",
       walk_state));
  return (AE_AML_NO_RETURN_VALUE);
 }

 state->results.obj_desc[index] = ((void*)0);
 if (index == 0) {
  status = acpi_ds_result_stack_pop(walk_state);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Obj=%p [%s] Index=%X State=%p Num=%X\n", *object,
     acpi_ut_get_object_type_name(*object),
     index, walk_state, walk_state->result_count));

 return (AE_OK);
}
