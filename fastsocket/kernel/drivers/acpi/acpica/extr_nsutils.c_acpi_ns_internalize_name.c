
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namestring_info {char const* external_name; char* internal_name; int length; } ;
typedef int acpi_status ;


 char* ACPI_ALLOCATE_ZEROED (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ns_build_internal_name (struct acpi_namestring_info*) ;
 int acpi_ns_get_internal_name_length (struct acpi_namestring_info*) ;
 int ns_internalize_name ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_internalize_name(const char *external_name, char **converted_name)
{
 char *internal_name;
 struct acpi_namestring_info info;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_internalize_name);

 if ((!external_name) || (*external_name == 0) || (!converted_name)) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 info.external_name = external_name;
 acpi_ns_get_internal_name_length(&info);



 internal_name = ACPI_ALLOCATE_ZEROED(info.length);
 if (!internal_name) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 info.internal_name = internal_name;
 status = acpi_ns_build_internal_name(&info);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(internal_name);
  return_ACPI_STATUS(status);
 }

 *converted_name = internal_name;
 return_ACPI_STATUS(AE_OK);
}
