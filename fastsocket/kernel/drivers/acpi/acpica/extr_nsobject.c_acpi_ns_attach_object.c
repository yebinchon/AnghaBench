
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object* next_object; } ;
union acpi_operand_object {scalar_t__ type; union acpi_operand_object* object; TYPE_1__ common; } ;
typedef scalar_t__ u8 ;
struct acpi_namespace_node {scalar_t__ type; struct acpi_namespace_node* object; TYPE_1__ common; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_ANY ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_detach_object (union acpi_operand_object*) ;
 int acpi_ut_add_reference (union acpi_operand_object*) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int acpi_ut_get_node_name (union acpi_operand_object*) ;
 int ns_attach_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_attach_object(struct acpi_namespace_node *node,
        union acpi_operand_object *object, acpi_object_type type)
{
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *last_obj_desc;
 acpi_object_type object_type = ACPI_TYPE_ANY;

 ACPI_FUNCTION_TRACE(ns_attach_object);




 if (!node) {



  ACPI_ERROR((AE_INFO, "Null NamedObj handle"));
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (!object && (ACPI_TYPE_ANY != type)) {



  ACPI_ERROR((AE_INFO,
       "Null object, but type not ACPI_TYPE_ANY"));
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (ACPI_GET_DESCRIPTOR_TYPE(node) != ACPI_DESC_TYPE_NAMED) {



  ACPI_ERROR((AE_INFO, "Invalid handle %p [%s]",
       node, acpi_ut_get_descriptor_name(node)));
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 if (node->object == object) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Obj %p already installed in NameObj %p\n",
      object, node));

  return_ACPI_STATUS(AE_OK);
 }



 if (!object) {
  obj_desc = ((void*)0);
  object_type = ACPI_TYPE_ANY;
 }





 else if ((ACPI_GET_DESCRIPTOR_TYPE(object) == ACPI_DESC_TYPE_NAMED) &&
   ((struct acpi_namespace_node *)object)->object) {




  obj_desc = ((struct acpi_namespace_node *)object)->object;
  object_type = ((struct acpi_namespace_node *)object)->type;
 }





 else {
  obj_desc = (union acpi_operand_object *)object;



  object_type = type;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Installing %p into Node %p [%4.4s]\n",
     obj_desc, node, acpi_ut_get_node_name(node)));



 if (node->object) {
  acpi_ns_detach_object(node);
 }

 if (obj_desc) {




  acpi_ut_add_reference(obj_desc);





  last_obj_desc = obj_desc;
  while (last_obj_desc->common.next_object) {
   last_obj_desc = last_obj_desc->common.next_object;
  }



  last_obj_desc->common.next_object = node->object;
 }

 node->type = (u8) object_type;
 node->object = obj_desc;

 return_ACPI_STATUS(AE_OK);
}
