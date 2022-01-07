
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_walk_state {size_t num_operands; int * operands; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int AE_OK ;
 int acpi_ex_resolve_to_value (int *,struct acpi_walk_state*) ;
 int ds_resolve_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ds_resolve_operands(struct acpi_walk_state *walk_state)
{
 u32 i;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_PTR(ds_resolve_operands, walk_state);






 for (i = 0; i < walk_state->num_operands; i++) {
  status =
      acpi_ex_resolve_to_value(&walk_state->operands[i],
          walk_state);
  if (ACPI_FAILURE(status)) {
   break;
  }
 }

 return_ACPI_STATUS(status);
}
