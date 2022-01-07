
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
typedef int acpi_status ;
typedef int acpi_size ;


 char* ACPI_ALLOCATE_ZEROED (size_t) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_BAD_PATHNAME ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;


 int ns_externalize_name ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_externalize_name(u32 internal_name_length,
    const char *internal_name,
    u32 * converted_name_length, char **converted_name)
{
 u32 names_index = 0;
 u32 num_segments = 0;
 u32 required_length;
 u32 prefix_length = 0;
 u32 i = 0;
 u32 j = 0;

 ACPI_FUNCTION_TRACE(ns_externalize_name);

 if (!internal_name_length || !internal_name || !converted_name) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 switch (internal_name[0]) {
 case '\\':
  prefix_length = 1;
  break;

 case '^':
  for (i = 0; i < internal_name_length; i++) {
   if (internal_name[i] == '^') {
    prefix_length = i + 1;
   } else {
    break;
   }
  }

  if (i == internal_name_length) {
   prefix_length = i;
  }

  break;

 default:
  break;
 }





 if (prefix_length < internal_name_length) {
  switch (internal_name[prefix_length]) {
  case 128:



   names_index = prefix_length + 2;
   num_segments = (u8)
       internal_name[(acpi_size) prefix_length + 1];
   break;

  case 129:



   names_index = prefix_length + 1;
   num_segments = 2;
   break;

  case 0:



   names_index = 0;
   num_segments = 0;
   break;

  default:



   names_index = prefix_length;
   num_segments = 1;
   break;
  }
 }






 required_length = prefix_length + (4 * num_segments) +
     ((num_segments > 0) ? (num_segments - 1) : 0) + 1;





 if (required_length > internal_name_length) {
  ACPI_ERROR((AE_INFO, "Invalid internal name"));
  return_ACPI_STATUS(AE_BAD_PATHNAME);
 }



 *converted_name = ACPI_ALLOCATE_ZEROED(required_length);
 if (!(*converted_name)) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 j = 0;

 for (i = 0; i < prefix_length; i++) {
  (*converted_name)[j++] = internal_name[i];
 }

 if (num_segments > 0) {
  for (i = 0; i < num_segments; i++) {
   if (i > 0) {
    (*converted_name)[j++] = '.';
   }

   (*converted_name)[j++] = internal_name[names_index++];
   (*converted_name)[j++] = internal_name[names_index++];
   (*converted_name)[j++] = internal_name[names_index++];
   (*converted_name)[j++] = internal_name[names_index++];
  }
 }

 if (converted_name_length) {
  *converted_name_length = (u32) required_length;
 }

 return_ACPI_STATUS(AE_OK);
}
