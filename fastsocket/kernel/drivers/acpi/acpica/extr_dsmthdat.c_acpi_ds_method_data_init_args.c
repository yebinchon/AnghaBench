
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef size_t u32 ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object**) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 int ACPI_REFCLASS_ARG ;
 int AE_OK ;
 int acpi_ds_method_data_set_value (int ,size_t,union acpi_operand_object*,struct acpi_walk_state*) ;
 int ds_method_data_init_args ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_method_data_init_args(union acpi_operand_object **params,
         u32 max_param_count,
         struct acpi_walk_state *walk_state)
{
 acpi_status status;
 u32 index = 0;

 ACPI_FUNCTION_TRACE_PTR(ds_method_data_init_args, params);

 if (!params) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "No param list passed to method\n"));
  return_ACPI_STATUS(AE_OK);
 }



 while ((index < ACPI_METHOD_NUM_ARGS) &&
        (index < max_param_count) && params[index]) {





  status = acpi_ds_method_data_set_value(ACPI_REFCLASS_ARG, index,
             params[index],
             walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  index++;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "%d args passed to method\n", index));
 return_ACPI_STATUS(AE_OK);
}
