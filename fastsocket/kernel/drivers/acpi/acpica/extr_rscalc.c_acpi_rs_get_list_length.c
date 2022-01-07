
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_DB_RESOURCES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MOVE_16_TO_16 (int*,size_t*) ;
 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;
 int ACPI_RS_SIZE_MIN ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AE_OK ;
 size_t* acpi_gbl_resource_aml_sizes ;
 int* acpi_gbl_resource_struct_sizes ;
 int acpi_rs_count_set_bits (size_t) ;
 int acpi_rs_stream_option_length (int,size_t) ;
 int acpi_ut_get_descriptor_length (size_t*) ;
 int acpi_ut_get_resource_header_length (size_t*) ;
 int acpi_ut_get_resource_length (size_t*) ;
 int acpi_ut_get_resource_type (size_t*) ;
 int acpi_ut_validate_resource (size_t*,size_t*) ;
 int return_ACPI_STATUS (int ) ;
 int rs_get_list_length ;

acpi_status
acpi_rs_get_list_length(u8 * aml_buffer,
   u32 aml_buffer_length, acpi_size * size_needed)
{
 acpi_status status;
 u8 *end_aml;
 u8 *buffer;
 u32 buffer_size;
 u16 temp16;
 u16 resource_length;
 u32 extra_struct_bytes;
 u8 resource_index;
 u8 minimum_aml_resource_length;

 ACPI_FUNCTION_TRACE(rs_get_list_length);

 *size_needed = 0;
 end_aml = aml_buffer + aml_buffer_length;



 while (aml_buffer < end_aml) {



  status = acpi_ut_validate_resource(aml_buffer, &resource_index);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }



  resource_length = acpi_ut_get_resource_length(aml_buffer);
  minimum_aml_resource_length =
      acpi_gbl_resource_aml_sizes[resource_index];





  extra_struct_bytes = 0;
  buffer =
      aml_buffer + acpi_ut_get_resource_header_length(aml_buffer);

  switch (acpi_ut_get_resource_type(aml_buffer)) {
  case 130:




   ACPI_MOVE_16_TO_16(&temp16, buffer);
   extra_struct_bytes = acpi_rs_count_set_bits(temp16);
   break;

  case 133:




   extra_struct_bytes = acpi_rs_count_set_bits(*buffer);
   break;

  case 128:
  case 129:




   extra_struct_bytes = resource_length;
   break;

  case 132:




   *size_needed += ACPI_RS_SIZE_MIN;
   return_ACPI_STATUS(AE_OK);

  case 135:
  case 136:
  case 134:




   extra_struct_bytes =
       acpi_rs_stream_option_length(resource_length,
        minimum_aml_resource_length);
   break;

  case 131:






   extra_struct_bytes = (buffer[1] - 1) * sizeof(u32);



   extra_struct_bytes +=
       acpi_rs_stream_option_length(resource_length -
        extra_struct_bytes,
        minimum_aml_resource_length);
   break;

  default:
   break;
  }







  buffer_size = acpi_gbl_resource_struct_sizes[resource_index] +
      extra_struct_bytes;
  buffer_size = (u32) ACPI_ROUND_UP_TO_NATIVE_WORD(buffer_size);

  *size_needed += buffer_size;

  ACPI_DEBUG_PRINT((ACPI_DB_RESOURCES,
      "Type %.2X, AmlLength %.2X InternalLength %.2X\n",
      acpi_ut_get_resource_type(aml_buffer),
      acpi_ut_get_descriptor_length(aml_buffer),
      buffer_size));





  aml_buffer += acpi_ut_get_descriptor_length(aml_buffer);
 }



 return_ACPI_STATUS(AE_AML_NO_RESOURCE_END_TAG);
}
