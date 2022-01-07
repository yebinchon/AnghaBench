
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_walk_state {size_t num_operands; int ** operands; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AE_STACK_UNDERFLOW ;
 int ds_obj_stack_pop ;

acpi_status
acpi_ds_obj_stack_pop(u32 pop_count, struct acpi_walk_state * walk_state)
{
 u32 i;

 ACPI_FUNCTION_NAME(ds_obj_stack_pop);

 for (i = 0; i < pop_count; i++) {



  if (walk_state->num_operands == 0) {
   ACPI_ERROR((AE_INFO,
        "Object stack underflow! Count=%X State=%p #Ops=%X",
        pop_count, walk_state,
        walk_state->num_operands));
   return (AE_STACK_UNDERFLOW);
  }



  walk_state->num_operands--;
  walk_state->operands[walk_state->num_operands] = ((void*)0);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Count=%X State=%p #Ops=%X\n",
     pop_count, walk_state, walk_state->num_operands));

 return (AE_OK);
}
