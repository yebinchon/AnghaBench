
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pointer; scalar_t__ length; } ;
union acpi_operand_object {TYPE_1__ string; } ;
typedef scalar_t__ u32 ;
typedef scalar_t__ acpi_size ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_STRING ;
 int AE_INFO ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_create_string_object ;

union acpi_operand_object *acpi_ut_create_string_object(acpi_size string_size)
{
 union acpi_operand_object *string_desc;
 char *string;

 ACPI_FUNCTION_TRACE_U32(ut_create_string_object, string_size);



 string_desc = acpi_ut_create_internal_object(ACPI_TYPE_STRING);
 if (!string_desc) {
  return_PTR(((void*)0));
 }





 string = ACPI_ALLOCATE_ZEROED(string_size + 1);
 if (!string) {
  ACPI_ERROR((AE_INFO, "Could not allocate size %X",
       (u32) string_size));
  acpi_ut_remove_reference(string_desc);
  return_PTR(((void*)0));
 }



 string_desc->string.pointer = string;
 string_desc->string.length = (u32) string_size;



 return_PTR(string_desc);
}
