
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
struct TYPE_7__ {int class; int node; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ reference; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef union acpi_object {int dummy; } acpi_object ;
typedef int acpi_status ;
typedef int acpi_size ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;

 int ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;






 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int acpi_ns_get_pathname_length (int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_reference_name (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_get_simple_object_size ;

__attribute__((used)) static acpi_status
acpi_ut_get_simple_object_size(union acpi_operand_object *internal_object,
          acpi_size * obj_length)
{
 acpi_size length;
 acpi_size size;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_PTR(ut_get_simple_object_size, internal_object);





 if (!internal_object) {
  *obj_length = sizeof(union acpi_object);
  return_ACPI_STATUS(AE_OK);
 }



 length = sizeof(union acpi_object);

 if (ACPI_GET_DESCRIPTOR_TYPE(internal_object) == ACPI_DESC_TYPE_NAMED) {



  *obj_length = ACPI_ROUND_UP_TO_NATIVE_WORD(length);
  return_ACPI_STATUS(status);
 }







 switch (internal_object->common.type) {
 case 128:

  length += (acpi_size) internal_object->string.length + 1;
  break;

 case 133:

  length += (acpi_size) internal_object->buffer.length;
  break;

 case 132:
 case 129:
 case 130:



  break;

 case 131:

  switch (internal_object->reference.class) {
  case 134:





   size =
       acpi_ns_get_pathname_length(internal_object->
       reference.node);
   if (!size) {
    return_ACPI_STATUS(AE_BAD_PARAMETER);
   }

   length += ACPI_ROUND_UP_TO_NATIVE_WORD(size);
   break;

  default:






   ACPI_ERROR((AE_INFO,
        "Cannot convert to external object - "
        "unsupported Reference Class [%s] %X in object %p",
        acpi_ut_get_reference_name(internal_object),
        internal_object->reference.class,
        internal_object));
   status = AE_TYPE;
   break;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO, "Cannot convert to external object - "
       "unsupported type [%s] %X in object %p",
       acpi_ut_get_object_type_name(internal_object),
       internal_object->common.type, internal_object));
  status = AE_TYPE;
  break;
 }







 *obj_length = ACPI_ROUND_UP_TO_NATIVE_WORD(length);
 return_ACPI_STATUS(status);
}
