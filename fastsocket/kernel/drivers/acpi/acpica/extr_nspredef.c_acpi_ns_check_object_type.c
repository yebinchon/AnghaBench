
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int ascii; } ;
struct TYPE_5__ {int type; TYPE_1__ name; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ node; } ;
typedef scalar_t__ u32 ;
struct acpi_predefined_data {int node_flags; int pathname; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_NOT_PACKAGE_ELEMENT ;
 scalar_t__ ACPI_RTYPE_BUFFER ;
 scalar_t__ ACPI_RTYPE_INTEGER ;
 scalar_t__ ACPI_RTYPE_PACKAGE ;
 scalar_t__ ACPI_RTYPE_REFERENCE ;
 scalar_t__ ACPI_RTYPE_STRING ;
 scalar_t__ ACPI_SUCCESS (int ) ;





 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_reference (struct acpi_predefined_data*,union acpi_operand_object*) ;
 int acpi_ns_get_expected_types (char*,scalar_t__) ;
 int acpi_ns_repair_object (struct acpi_predefined_data*,scalar_t__,scalar_t__,union acpi_operand_object**) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;

__attribute__((used)) static acpi_status
acpi_ns_check_object_type(struct acpi_predefined_data *data,
     union acpi_operand_object **return_object_ptr,
     u32 expected_btypes, u32 package_index)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 acpi_status status = AE_OK;
 u32 return_btype;
 char type_buffer[48];





 if (!return_object) {
  goto type_error_exit;
 }



 if (ACPI_GET_DESCRIPTOR_TYPE(return_object) == ACPI_DESC_TYPE_NAMED) {
  ACPI_WARN_PREDEFINED((AE_INFO, data->pathname, data->node_flags,
          "Invalid return type - Found a Namespace node [%4.4s] type %s",
          return_object->node.name.ascii,
          acpi_ut_get_type_name(return_object->node.
           type)));
  return (AE_AML_OPERAND_TYPE);
 }
 switch (return_object->common.type) {
 case 131:
  return_btype = ACPI_RTYPE_INTEGER;
  break;

 case 132:
  return_btype = ACPI_RTYPE_BUFFER;
  break;

 case 128:
  return_btype = ACPI_RTYPE_STRING;
  break;

 case 129:
  return_btype = ACPI_RTYPE_PACKAGE;
  break;

 case 130:
  return_btype = ACPI_RTYPE_REFERENCE;
  break;

 default:


  goto type_error_exit;
 }



 if (!(return_btype & expected_btypes)) {



  status = acpi_ns_repair_object(data, expected_btypes,
            package_index,
            return_object_ptr);
  if (ACPI_SUCCESS(status)) {
   return (AE_OK);
  }
  goto type_error_exit;
 }



 if (return_object->common.type == 130) {
  status = acpi_ns_check_reference(data, return_object);
 }

 return (status);

      type_error_exit:



 acpi_ns_get_expected_types(type_buffer, expected_btypes);

 if (package_index == ACPI_NOT_PACKAGE_ELEMENT) {
  ACPI_WARN_PREDEFINED((AE_INFO, data->pathname, data->node_flags,
          "Return type mismatch - found %s, expected %s",
          acpi_ut_get_object_type_name
          (return_object), type_buffer));
 } else {
  ACPI_WARN_PREDEFINED((AE_INFO, data->pathname, data->node_flags,
          "Return Package type mismatch at index %u - "
          "found %s, expected %s", package_index,
          acpi_ut_get_object_type_name
          (return_object), type_buffer));
 }

 return (AE_AML_OPERAND_TYPE);
}
