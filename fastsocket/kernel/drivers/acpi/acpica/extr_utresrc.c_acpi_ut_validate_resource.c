
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int acpi_status ;
typedef int acpi_rs_length ;



 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_RESOURCE_NAME_LARGE ;
 int ACPI_RESOURCE_NAME_LARGE_MAX ;
 int ACPI_RESOURCE_NAME_SMALL_MASK ;


 int AE_AML_BAD_RESOURCE_LENGTH ;
 int AE_AML_INVALID_RESOURCE_TYPE ;
 int AE_OK ;
 int * acpi_gbl_resource_aml_sizes ;
 int* acpi_gbl_resource_types ;
 int acpi_ut_get_resource_length (void*) ;

acpi_status acpi_ut_validate_resource(void *aml, u8 * return_index)
{
 u8 resource_type;
 u8 resource_index;
 acpi_rs_length resource_length;
 acpi_rs_length minimum_resource_length;

 ACPI_FUNCTION_ENTRY();




 resource_type = ACPI_GET8(aml);





 if (resource_type & ACPI_RESOURCE_NAME_LARGE) {



  if (resource_type > ACPI_RESOURCE_NAME_LARGE_MAX) {
   return (AE_AML_INVALID_RESOURCE_TYPE);
  }





  resource_index = (u8) (resource_type - 0x70);
 } else {




  resource_index = (u8)
      ((resource_type & ACPI_RESOURCE_NAME_SMALL_MASK) >> 3);
 }



 if (!acpi_gbl_resource_types[resource_index]) {
  return (AE_AML_INVALID_RESOURCE_TYPE);
 }





 resource_length = acpi_ut_get_resource_length(aml);
 minimum_resource_length = acpi_gbl_resource_aml_sizes[resource_index];



 switch (acpi_gbl_resource_types[resource_index]) {
 case 130:



  if (resource_length != minimum_resource_length) {
   return (AE_AML_BAD_RESOURCE_LENGTH);
  }
  break;

 case 128:



  if (resource_length < minimum_resource_length) {
   return (AE_AML_BAD_RESOURCE_LENGTH);
  }
  break;

 case 129:



  if ((resource_length > minimum_resource_length) ||
      (resource_length < (minimum_resource_length - 1))) {
   return (AE_AML_BAD_RESOURCE_LENGTH);
  }
  break;

 default:



  return (AE_AML_INVALID_RESOURCE_TYPE);
 }



 if (return_index) {
  *return_index = resource_index;
 }

 return (AE_OK);
}
