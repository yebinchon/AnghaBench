
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bit_length; scalar_t__ access_bit_width; scalar_t__ start_field_bit_offset; scalar_t__ access_byte_width; } ;
union acpi_operand_object {TYPE_1__ common_field; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef char acpi_integer ;


 void* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (void*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_INTEGER_BIT_SIZE ;
 char ACPI_INTEGER_MAX ;
 char ACPI_MASK_BITS_ABOVE (scalar_t__) ;
 char ACPI_MASK_BITS_BELOW (scalar_t__) ;
 int ACPI_MEMCPY (char*,char*,scalar_t__) ;
 scalar_t__ ACPI_MIN (scalar_t__,scalar_t__) ;
 scalar_t__ ACPI_ROUND_BITS_UP_TO_BYTES (scalar_t__) ;
 scalar_t__ ACPI_ROUND_UP_TO (scalar_t__,scalar_t__) ;
 int AE_NO_MEMORY ;
 int acpi_ex_write_with_update_rule (union acpi_operand_object*,char,char,scalar_t__) ;
 int ex_insert_into_field ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_insert_into_field(union acpi_operand_object *obj_desc,
     void *buffer, u32 buffer_length)
{
 acpi_status status;
 acpi_integer mask;
 acpi_integer width_mask;
 acpi_integer merged_datum;
 acpi_integer raw_datum = 0;
 u32 field_offset = 0;
 u32 buffer_offset = 0;
 u32 buffer_tail_bits;
 u32 datum_count;
 u32 field_datum_count;
 u32 i;
 u32 required_length;
 void *new_buffer;

 ACPI_FUNCTION_TRACE(ex_insert_into_field);



 new_buffer = ((void*)0);
 required_length =
     ACPI_ROUND_BITS_UP_TO_BYTES(obj_desc->common_field.bit_length);






 if (buffer_length < required_length) {



  new_buffer = ACPI_ALLOCATE_ZEROED(required_length);
  if (!new_buffer) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }






  ACPI_MEMCPY((char *)new_buffer, (char *)buffer, buffer_length);
  buffer = new_buffer;
  buffer_length = required_length;
 }






 if (obj_desc->common_field.access_bit_width == ACPI_INTEGER_BIT_SIZE) {
  width_mask = ACPI_INTEGER_MAX;
 } else {
  width_mask =
      ACPI_MASK_BITS_ABOVE(obj_desc->common_field.
      access_bit_width);
 }

 mask = width_mask &
     ACPI_MASK_BITS_BELOW(obj_desc->common_field.start_field_bit_offset);



 datum_count = ACPI_ROUND_UP_TO(obj_desc->common_field.bit_length,
           obj_desc->common_field.access_bit_width);

 field_datum_count = ACPI_ROUND_UP_TO(obj_desc->common_field.bit_length +
          obj_desc->common_field.
          start_field_bit_offset,
          obj_desc->common_field.
          access_bit_width);



 ACPI_MEMCPY(&raw_datum, buffer,
      ACPI_MIN(obj_desc->common_field.access_byte_width,
        buffer_length - buffer_offset));

 merged_datum =
     raw_datum << obj_desc->common_field.start_field_bit_offset;



 for (i = 1; i < field_datum_count; i++) {



  merged_datum &= mask;
  status = acpi_ex_write_with_update_rule(obj_desc, mask,
       merged_datum,
       field_offset);
  if (ACPI_FAILURE(status)) {
   goto exit;
  }

  field_offset += obj_desc->common_field.access_byte_width;
  if ((obj_desc->common_field.access_bit_width -
       obj_desc->common_field.start_field_bit_offset) <
      ACPI_INTEGER_BIT_SIZE) {
   merged_datum =
       raw_datum >> (obj_desc->common_field.
       access_bit_width -
       obj_desc->common_field.
       start_field_bit_offset);
  } else {
   merged_datum = 0;
  }

  mask = width_mask;

  if (i == datum_count) {
   break;
  }



  buffer_offset += obj_desc->common_field.access_byte_width;
  ACPI_MEMCPY(&raw_datum, ((char *)buffer) + buffer_offset,
       ACPI_MIN(obj_desc->common_field.access_byte_width,
         buffer_length - buffer_offset));
  merged_datum |=
      raw_datum << obj_desc->common_field.start_field_bit_offset;
 }



 buffer_tail_bits = (obj_desc->common_field.bit_length +
       obj_desc->common_field.start_field_bit_offset) %
     obj_desc->common_field.access_bit_width;
 if (buffer_tail_bits) {
  mask &= ACPI_MASK_BITS_ABOVE(buffer_tail_bits);
 }



 merged_datum &= mask;
 status = acpi_ex_write_with_update_rule(obj_desc,
      mask, merged_datum,
      field_offset);

      exit:


 if (new_buffer) {
  ACPI_FREE(new_buffer);
 }
 return_ACPI_STATUS(status);
}
