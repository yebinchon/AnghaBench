
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; int object; } ;
struct TYPE_3__ {int reference_count; scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_NO_IMPLICIT_CONVERSION ;
 scalar_t__ ACPI_REFCLASS_ARG ;
 scalar_t__ ACPI_REFCLASS_REFOF ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_BAD_PARAMETER ;
 int acpi_ds_method_data_delete_value (scalar_t__,int ,struct acpi_walk_state*) ;
 int acpi_ds_method_data_get_node (scalar_t__,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int acpi_ds_method_data_set_value (scalar_t__,int ,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ex_store_object_to_node (union acpi_operand_object*,int ,struct acpi_walk_state*,int ) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_copy_iobject_to_iobject (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_store_object_to_local ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_store_object_to_local(u8 type,
         u32 index,
         union acpi_operand_object *obj_desc,
         struct acpi_walk_state *walk_state)
{
 acpi_status status;
 struct acpi_namespace_node *node;
 union acpi_operand_object *current_obj_desc;
 union acpi_operand_object *new_obj_desc;

 ACPI_FUNCTION_TRACE(ds_store_object_to_local);
 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Type=%2.2X Index=%d Obj=%p\n",
     type, index, obj_desc));



 if (!obj_desc) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status = acpi_ds_method_data_get_node(type, index, walk_state, &node);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 current_obj_desc = acpi_ns_get_attached_object(node);
 if (current_obj_desc == obj_desc) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Obj=%p already installed!\n",
      obj_desc));
  return_ACPI_STATUS(status);
 }
 new_obj_desc = obj_desc;
 if (obj_desc->common.reference_count > 1) {
  status =
      acpi_ut_copy_iobject_to_iobject(obj_desc, &new_obj_desc,
          walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 }







 if (current_obj_desc) {
  if (type == ACPI_REFCLASS_ARG) {




   if ((ACPI_GET_DESCRIPTOR_TYPE(current_obj_desc) ==
        ACPI_DESC_TYPE_OPERAND)
       && (current_obj_desc->common.type ==
    ACPI_TYPE_LOCAL_REFERENCE)
       && (current_obj_desc->reference.class ==
    ACPI_REFCLASS_REFOF)) {
    ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
        "Arg (%p) is an ObjRef(Node), storing in node %p\n",
        new_obj_desc,
        current_obj_desc));






    status =
        acpi_ex_store_object_to_node(new_obj_desc,
         current_obj_desc->
         reference.
         object,
         walk_state,
         ACPI_NO_IMPLICIT_CONVERSION);



    if (new_obj_desc != obj_desc) {
     acpi_ut_remove_reference(new_obj_desc);
    }
    return_ACPI_STATUS(status);
   }
  }



  acpi_ds_method_data_delete_value(type, index, walk_state);
 }






 status =
     acpi_ds_method_data_set_value(type, index, new_obj_desc,
       walk_state);



 if (new_obj_desc != obj_desc) {
  acpi_ut_remove_reference(new_obj_desc);
 }

 return_ACPI_STATUS(status);
}
