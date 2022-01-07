
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* base_byte_offset; void* start_field_bit_offset; void* access_bit_width; void* access_byte_width; void* bit_length; void* attribute; void* field_flags; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef void* u8 ;
typedef void* u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_DIV_8 (void*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 void* ACPI_MUL_8 (void*) ;
 void* ACPI_ROUND_BITS_DOWN_TO_BYTES (void*) ;
 scalar_t__ ACPI_ROUND_DOWN (void*,void*) ;
 int AE_AML_OPERAND_VALUE ;
 int AE_OK ;
 void* acpi_ex_decode_field_access (union acpi_operand_object*,void*,void**) ;
 int ex_prep_common_field_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_prep_common_field_object(union acpi_operand_object *obj_desc,
     u8 field_flags,
     u8 field_attribute,
     u32 field_bit_position, u32 field_bit_length)
{
 u32 access_bit_width;
 u32 byte_alignment;
 u32 nearest_byte_address;

 ACPI_FUNCTION_TRACE(ex_prep_common_field_object);






 obj_desc->common_field.field_flags = field_flags;
 obj_desc->common_field.attribute = field_attribute;
 obj_desc->common_field.bit_length = field_bit_length;
 access_bit_width = acpi_ex_decode_field_access(obj_desc, field_flags,
             &byte_alignment);
 if (!access_bit_width) {
  return_ACPI_STATUS(AE_AML_OPERAND_VALUE);
 }



 obj_desc->common_field.access_byte_width = (u8)
     ACPI_DIV_8(access_bit_width);

 obj_desc->common_field.access_bit_width = (u8) access_bit_width;
 nearest_byte_address =
     ACPI_ROUND_BITS_DOWN_TO_BYTES(field_bit_position);
 obj_desc->common_field.base_byte_offset = (u32)
     ACPI_ROUND_DOWN(nearest_byte_address, byte_alignment);





 obj_desc->common_field.start_field_bit_offset = (u8)
     (field_bit_position -
      ACPI_MUL_8(obj_desc->common_field.base_byte_offset));

 return_ACPI_STATUS(AE_OK);
}
