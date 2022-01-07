
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_walk_state {scalar_t__ result_size; int results; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_STATE_RESULT ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ;
 scalar_t__ ACPI_RESULTS_OBJ_NUM_MAX ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_STACK_OVERFLOW ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int acpi_ut_push_generic_state (int *,union acpi_generic_state*) ;
 int ds_result_stack_push ;

__attribute__((used)) static acpi_status acpi_ds_result_stack_push(struct acpi_walk_state *walk_state)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_NAME(ds_result_stack_push);



 if (((u32) walk_state->result_size + ACPI_RESULTS_FRAME_OBJ_NUM) >
     ACPI_RESULTS_OBJ_NUM_MAX) {
  ACPI_ERROR((AE_INFO, "Result stack overflow: State=%p Num=%X",
       walk_state, walk_state->result_size));
  return (AE_STACK_OVERFLOW);
 }

 state = acpi_ut_create_generic_state();
 if (!state) {
  return (AE_NO_MEMORY);
 }

 state->common.descriptor_type = ACPI_DESC_TYPE_STATE_RESULT;
 acpi_ut_push_generic_state(&walk_state->results, state);



 walk_state->result_size += ACPI_RESULTS_FRAME_OBJ_NUM;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Results=%p State=%p\n",
     state, walk_state));

 return (AE_OK);
}
