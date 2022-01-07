
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* ACPI_ALLOCATE (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NAME_SIZE ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AML_DUAL_NAME_PREFIX ;
 int AML_MULTI_NAME_PREFIX_OP ;
 int AML_PARENT_PREFIX ;
 int AML_ROOT_PREFIX ;
 int ex_allocate_name_string ;
 int return_PTR (char*) ;

__attribute__((used)) static char *acpi_ex_allocate_name_string(u32 prefix_count, u32 num_name_segs)
{
 char *temp_ptr;
 char *name_string;
 u32 size_needed;

 ACPI_FUNCTION_TRACE(ex_allocate_name_string);






 if (prefix_count == ACPI_UINT32_MAX) {



  size_needed = 1 + (ACPI_NAME_SIZE * num_name_segs) + 2 + 1;
 } else {
  size_needed =
      prefix_count + (ACPI_NAME_SIZE * num_name_segs) + 2 + 1;
 }





 name_string = ACPI_ALLOCATE(size_needed);
 if (!name_string) {
  ACPI_ERROR((AE_INFO,
       "Could not allocate size %d", size_needed));
  return_PTR(((void*)0));
 }

 temp_ptr = name_string;



 if (prefix_count == ACPI_UINT32_MAX) {
  *temp_ptr++ = AML_ROOT_PREFIX;
 } else {
  while (prefix_count--) {
   *temp_ptr++ = AML_PARENT_PREFIX;
  }
 }



 if (num_name_segs > 2) {



  *temp_ptr++ = AML_MULTI_NAME_PREFIX_OP;
  *temp_ptr++ = (char)num_name_segs;
 } else if (2 == num_name_segs) {



  *temp_ptr++ = AML_DUAL_NAME_PREFIX;
 }





 *temp_ptr = 0;

 return_PTR(name_string);
}
