
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int class; scalar_t__ target_type; int value; union acpi_operand_object** where; union acpi_operand_object* node; union acpi_operand_object* object; } ;
union acpi_operand_object {scalar_t__ type; TYPE_2__ common; TYPE_1__ reference; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {scalar_t__ type; TYPE_2__ common; TYPE_1__ reference; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;




 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (struct acpi_walk_state*,union acpi_operand_object*,scalar_t__*,union acpi_operand_object**)) ;
 int const ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;







 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_DDB_HANDLE ;
 scalar_t__ ACPI_TYPE_DEBUG_OBJECT ;
 scalar_t__ ACPI_TYPE_FIELD_UNIT ;
 scalar_t__ ACPI_TYPE_LOCAL_ALIAS ;


 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;


 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_AML_CIRCULAR_REFERENCE ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_method_data_get_node (int const,int ,struct acpi_walk_state*,union acpi_operand_object**) ;
 int acpi_ds_method_data_get_value (int const,int ,struct acpi_walk_state*,union acpi_operand_object**) ;
 union acpi_operand_object* acpi_ns_get_attached_object (union acpi_operand_object*) ;
 scalar_t__ acpi_ns_get_type (union acpi_operand_object*) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_resolve_multiple(struct acpi_walk_state *walk_state,
    union acpi_operand_object *operand,
    acpi_object_type * return_type,
    union acpi_operand_object **return_desc)
{
 union acpi_operand_object *obj_desc = (void *)operand;
 struct acpi_namespace_node *node;
 acpi_object_type type;
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_ex_resolve_multiple);



 switch (ACPI_GET_DESCRIPTOR_TYPE(obj_desc)) {
 case 139:
  type = obj_desc->common.type;
  break;

 case 140:
  type = ((struct acpi_namespace_node *)obj_desc)->type;
  obj_desc =
      acpi_ns_get_attached_object((struct acpi_namespace_node *)
      obj_desc);



  if (type == ACPI_TYPE_LOCAL_ALIAS) {
   type = ((struct acpi_namespace_node *)obj_desc)->type;
   obj_desc =
       acpi_ns_get_attached_object((struct
        acpi_namespace_node *)
       obj_desc);
  }
  break;

 default:
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }



 if (type != ACPI_TYPE_LOCAL_REFERENCE) {
  goto exit;
 }







 while (obj_desc->common.type == ACPI_TYPE_LOCAL_REFERENCE) {
  switch (obj_desc->reference.class) {
  case 133:
  case 134:



   if (obj_desc->reference.class == 133) {
    node = obj_desc->reference.object;
   } else {

    node = obj_desc->reference.node;
   }



   if (ACPI_GET_DESCRIPTOR_TYPE(node) !=
       140) {
    ACPI_ERROR((AE_INFO, "Not a NS node %p [%s]",
         node,
         acpi_ut_get_descriptor_name(node)));
    return_ACPI_STATUS(AE_AML_INTERNAL);
   }



   obj_desc = acpi_ns_get_attached_object(node);
   if (!obj_desc) {



    type = acpi_ns_get_type(node);
    goto exit;
   }



   if (obj_desc == operand) {
    return_ACPI_STATUS(AE_AML_CIRCULAR_REFERENCE);
   }
   break;

  case 136:



   type = obj_desc->reference.target_type;
   if (type != ACPI_TYPE_PACKAGE) {
    goto exit;
   }
   obj_desc = *(obj_desc->reference.where);
   if (!obj_desc) {



    type = 0;
    goto exit;
   }
   break;

  case 132:

   type = ACPI_TYPE_DDB_HANDLE;
   goto exit;

  case 135:
  case 138:

   if (return_desc) {
    status =
        acpi_ds_method_data_get_value(obj_desc->
          reference.
          class,
          obj_desc->
          reference.
          value,
          walk_state,
          &obj_desc);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }
    acpi_ut_remove_reference(obj_desc);
   } else {
    status =
        acpi_ds_method_data_get_node(obj_desc->
         reference.
         class,
         obj_desc->
         reference.
         value,
         walk_state,
         &node);
    if (ACPI_FAILURE(status)) {
     return_ACPI_STATUS(status);
    }

    obj_desc = acpi_ns_get_attached_object(node);
    if (!obj_desc) {
     type = ACPI_TYPE_ANY;
     goto exit;
    }
   }
   break;

  case 137:



   type = ACPI_TYPE_DEBUG_OBJECT;
   goto exit;

  default:

   ACPI_ERROR((AE_INFO,
        "Unknown Reference Class %2.2X",
        obj_desc->reference.class));
   return_ACPI_STATUS(AE_AML_INTERNAL);
  }
 }





 type = obj_desc->common.type;

      exit:


 switch (type) {
 case 129:
 case 131:
 case 130:

  type = ACPI_TYPE_FIELD_UNIT;
  break;

 case 128:



  type = ACPI_TYPE_ANY;
  break;

 default:

  break;
 }

 *return_type = type;
 if (return_desc) {
  *return_desc = obj_desc;
 }
 return_ACPI_STATUS(AE_OK);
}
