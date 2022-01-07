
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_walk_state {size_t num_operands; int ** operands; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int acpi_ut_remove_reference (int *) ;
 int ds_clear_operands ;
 int return_VOID ;

void acpi_ds_clear_operands(struct acpi_walk_state *walk_state)
{
 u32 i;

 ACPI_FUNCTION_TRACE_PTR(ds_clear_operands, walk_state);



 for (i = 0; i < walk_state->num_operands; i++) {




  acpi_ut_remove_reference(walk_state->operands[i]);
  walk_state->operands[i] = ((void*)0);
 }

 walk_state->num_operands = 0;
 return_VOID;
}
