
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ds_method_data_get_node (int ,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;
 int ds_method_data_set_value ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ds_method_data_set_value(u8 type,
         u32 index,
         union acpi_operand_object *object,
         struct acpi_walk_state *walk_state)
{
 acpi_status status;
 struct acpi_namespace_node *node;

 ACPI_FUNCTION_TRACE(ds_method_data_set_value);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "NewObj %p Type %2.2X, Refs=%d [%s]\n", object,
     type, object->common.reference_count,
     acpi_ut_get_type_name(object->common.type)));



 status = acpi_ds_method_data_get_node(type, index, walk_state, &node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }







 acpi_ut_add_reference(object);



 node->object = object;
 return_ACPI_STATUS(status);
}
