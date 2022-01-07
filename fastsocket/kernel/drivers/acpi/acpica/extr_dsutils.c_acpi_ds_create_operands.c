
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_parse_object* next; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_walk_state {int num_operands; scalar_t__ operand_index; int ** operands; } ;
typedef int acpi_status ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_OBJ_NUM_OPERANDS ;
 int AE_BAD_DATA ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_create_operand (struct acpi_walk_state*,union acpi_parse_object*,int) ;
 int acpi_ds_obj_stack_pop_and_delete (int,struct acpi_walk_state*) ;
 int ds_create_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_create_operands(struct acpi_walk_state *walk_state,
   union acpi_parse_object *first_arg)
{
 acpi_status status = AE_OK;
 union acpi_parse_object *arg;
 union acpi_parse_object *arguments[ACPI_OBJ_NUM_OPERANDS];
 u32 arg_count = 0;
 u32 index = walk_state->num_operands;
 u32 i;

 ACPI_FUNCTION_TRACE_PTR(ds_create_operands, first_arg);



 arg = first_arg;
 while (arg) {
  if (index >= ACPI_OBJ_NUM_OPERANDS) {
   return_ACPI_STATUS(AE_BAD_DATA);
  }

  arguments[index] = arg;
  walk_state->operands[index] = ((void*)0);



  arg = arg->common.next;
  arg_count++;
  index++;
 }

 index--;



 for (i = 0; i < arg_count; i++) {
  arg = arguments[index];



  walk_state->operand_index = (u8) index;

  status = acpi_ds_create_operand(walk_state, arg, index);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  index--;

  ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
      "Arg #%d (%p) done, Arg1=%p\n", index, arg,
      first_arg));
 }

 return_ACPI_STATUS(status);

      cleanup:





 acpi_ds_obj_stack_pop_and_delete(arg_count, walk_state);

 ACPI_EXCEPTION((AE_INFO, status, "While creating Arg %d", index));
 return_ACPI_STATUS(status);
}
