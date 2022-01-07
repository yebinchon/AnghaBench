
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_walk_state {TYPE_1__* arguments; TYPE_1__* local_variables; } ;
struct TYPE_2__ {scalar_t__ object; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 size_t ACPI_METHOD_NUM_LOCALS ;
 int acpi_ns_detach_object (TYPE_1__*) ;
 int ds_method_data_delete_all ;
 int return_VOID ;

void acpi_ds_method_data_delete_all(struct acpi_walk_state *walk_state)
{
 u32 index;

 ACPI_FUNCTION_TRACE(ds_method_data_delete_all);



 for (index = 0; index < ACPI_METHOD_NUM_LOCALS; index++) {
  if (walk_state->local_variables[index].object) {
   ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Deleting Local%d=%p\n",
       index,
       walk_state->local_variables[index].
       object));



   acpi_ns_detach_object(&walk_state->
           local_variables[index]);
  }
 }



 for (index = 0; index < ACPI_METHOD_NUM_ARGS; index++) {
  if (walk_state->arguments[index].object) {
   ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Deleting Arg%d=%p\n",
       index,
       walk_state->arguments[index].object));



   acpi_ns_detach_object(&walk_state->arguments[index]);
  }
 }

 return_VOID;
}
