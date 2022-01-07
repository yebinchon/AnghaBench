
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
struct acpi_walk_state {scalar_t__ result_size; int result_count; int * results; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (int **) ;
 int ds_result_stack_pop ;

__attribute__((used)) static acpi_status acpi_ds_result_stack_pop(struct acpi_walk_state *walk_state)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_NAME(ds_result_stack_pop);



 if (walk_state->results == ((void*)0)) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Result stack underflow - State=%p\n",
      walk_state));
  return (AE_AML_NO_OPERAND);
 }

 if (walk_state->result_size < ACPI_RESULTS_FRAME_OBJ_NUM) {
  ACPI_ERROR((AE_INFO, "Insufficient result stack size"));
  return (AE_AML_INTERNAL);
 }

 state = acpi_ut_pop_generic_state(&walk_state->results);
 acpi_ut_delete_generic_state(state);



 walk_state->result_size -= ACPI_RESULTS_FRAME_OBJ_NUM;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Result=%p RemainingResults=%X State=%p\n",
     state, walk_state->result_count, walk_state));

 return (AE_OK);
}
