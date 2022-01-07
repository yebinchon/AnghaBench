
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int class; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_NO_MEMORY ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 int acpi_ns_exec_module_code_list () ;
 int acpi_ns_load_table (int ,struct acpi_namespace_node*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_add_table ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ex_add_table(u32 table_index,
    struct acpi_namespace_node *parent_node,
    union acpi_operand_object **ddb_handle)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;

 ACPI_FUNCTION_TRACE(ex_add_table);



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_REFERENCE);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 obj_desc->common.flags |= AOPOBJ_DATA_VALID;
 obj_desc->reference.class = ACPI_REFCLASS_TABLE;
 *ddb_handle = obj_desc;



 obj_desc->reference.value = table_index;



 status = acpi_ns_load_table(table_index, parent_node);
 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(obj_desc);
  *ddb_handle = ((void*)0);
  return_ACPI_STATUS(status);
 }



 acpi_ex_exit_interpreter();
 acpi_ns_exec_module_code_list();
 acpi_ex_enter_interpreter();

 return_ACPI_STATUS(status);
}
