
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {union acpi_operand_object* object; int class; } ;
struct TYPE_3__ {int type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;



 int ACPI_REFCLASS_REFOF ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ex_get_object_reference ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_get_object_reference(union acpi_operand_object *obj_desc,
        union acpi_operand_object **return_desc,
        struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *reference_obj;
 union acpi_operand_object *referenced_obj;

 ACPI_FUNCTION_TRACE_PTR(ex_get_object_reference, obj_desc);

 *return_desc = ((void*)0);

 switch (ACPI_GET_DESCRIPTOR_TYPE(obj_desc)) {
 case 131:

  if (obj_desc->common.type != ACPI_TYPE_LOCAL_REFERENCE) {
   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }




  switch (obj_desc->reference.class) {
  case 128:
  case 130:
  case 129:



   referenced_obj = obj_desc->reference.object;
   break;

  default:

   ACPI_ERROR((AE_INFO, "Unknown Reference Class %2.2X",
        obj_desc->reference.class));
   return_ACPI_STATUS(AE_AML_INTERNAL);
  }
  break;

 case 132:




  referenced_obj = obj_desc;
  break;

 default:

  ACPI_ERROR((AE_INFO, "Invalid descriptor type %X",
       ACPI_GET_DESCRIPTOR_TYPE(obj_desc)));
  return_ACPI_STATUS(AE_TYPE);
 }



 reference_obj =
     acpi_ut_create_internal_object(ACPI_TYPE_LOCAL_REFERENCE);
 if (!reference_obj) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 reference_obj->reference.class = ACPI_REFCLASS_REFOF;
 reference_obj->reference.object = referenced_obj;
 *return_desc = reference_obj;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "Object %p Type [%s], returning Reference %p\n",
     obj_desc, acpi_ut_get_object_type_name(obj_desc),
     *return_desc));

 return_ACPI_STATUS(AE_OK);
}
