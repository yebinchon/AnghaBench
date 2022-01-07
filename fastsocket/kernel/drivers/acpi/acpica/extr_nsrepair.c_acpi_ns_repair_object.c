
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; int reference_count; } ;
struct TYPE_5__ {size_t length; int * pointer; } ;
struct TYPE_4__ {int pointer; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef int u32 ;
struct acpi_predefined_data {int flags; int node_flags; int pathname; } ;
typedef int acpi_status ;
typedef size_t acpi_size ;


 int ACPI_MEMCPY (int ,int *,size_t) ;
 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_RTYPE_STRING ;

 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_string_object (size_t) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;

acpi_status
acpi_ns_repair_object(struct acpi_predefined_data *data,
        u32 expected_btypes,
        u32 package_index,
        union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object *new_object;
 acpi_size length;

 switch (return_object->common.type) {
 case 128:



  if (!(expected_btypes & ACPI_RTYPE_STRING)) {
   return (AE_AML_OPERAND_TYPE);
  }







  length = 0;
  while ((length < return_object->buffer.length) &&
         (return_object->buffer.pointer[length])) {
   length++;
  }



  new_object = acpi_ut_create_string_object(length);
  if (!new_object) {
   return (AE_NO_MEMORY);
  }





  ACPI_MEMCPY(new_object->string.pointer,
       return_object->buffer.pointer, length);







  if (package_index != ACPI_NOT_PACKAGE_ELEMENT) {
   new_object->common.reference_count =
       return_object->common.reference_count;

   if (return_object->common.reference_count > 1) {
    return_object->common.reference_count--;
   }

   ACPI_WARN_PREDEFINED((AE_INFO, data->pathname,
           data->node_flags,
           "Converted Buffer to expected String at index %u",
           package_index));
  } else {
   ACPI_WARN_PREDEFINED((AE_INFO, data->pathname,
           data->node_flags,
           "Converted Buffer to expected String"));
  }



  acpi_ut_remove_reference(return_object);
  *return_object_ptr = new_object;
  data->flags |= ACPI_OBJECT_REPAIRED;
  return (AE_OK);

 default:
  break;
 }

 return (AE_AML_OPERAND_TYPE);
}
