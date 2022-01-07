
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t value; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {size_t length; int * pointer; } ;
union acpi_operand_object {TYPE_3__ integer; TYPE_2__ common; TYPE_1__ buffer; } ;
typedef int u8 ;
typedef size_t u32 ;
typedef int acpi_status ;
typedef size_t acpi_integer ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (size_t) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;



 int AE_AML_BUFFER_LIMIT ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int acpi_ex_truncate_for32bit_table (union acpi_operand_object*) ;
 size_t acpi_gbl_integer_byte_width ;
 union acpi_operand_object* acpi_ut_create_internal_object (int const) ;
 int acpi_ut_strtoul64 (char*,size_t,size_t*) ;
 int ex_convert_to_integer ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_convert_to_integer(union acpi_operand_object *obj_desc,
      union acpi_operand_object **result_desc, u32 flags)
{
 union acpi_operand_object *return_desc;
 u8 *pointer;
 acpi_integer result;
 u32 i;
 u32 count;
 acpi_status status;

 ACPI_FUNCTION_TRACE_PTR(ex_convert_to_integer, obj_desc);

 switch (obj_desc->common.type) {
 case 129:



  *result_desc = obj_desc;
  return_ACPI_STATUS(AE_OK);

 case 130:
 case 128:



  pointer = obj_desc->buffer.pointer;
  count = obj_desc->buffer.length;
  break;

 default:
  return_ACPI_STATUS(AE_TYPE);
 }
 result = 0;



 switch (obj_desc->common.type) {
 case 128:







  status = acpi_ut_strtoul64((char *)pointer, flags, &result);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
  break;

 case 130:



  if (!count) {
   return_ACPI_STATUS(AE_AML_BUFFER_LIMIT);
  }



  if (count > acpi_gbl_integer_byte_width) {
   count = acpi_gbl_integer_byte_width;
  }





  for (i = 0; i < count; i++) {





   result |= (((acpi_integer) pointer[i]) << (i * 8));
  }
  break;

 default:


  break;
 }



 return_desc = acpi_ut_create_internal_object(129);
 if (!return_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Converted value: %8.8X%8.8X\n",
     ACPI_FORMAT_UINT64(result)));



 return_desc->integer.value = result;
 acpi_ex_truncate_for32bit_table(return_desc);
 *result_desc = return_desc;
 return_ACPI_STATUS(AE_OK);
}
