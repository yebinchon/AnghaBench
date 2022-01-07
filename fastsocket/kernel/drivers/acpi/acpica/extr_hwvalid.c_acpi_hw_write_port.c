
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ acpi_status ;
typedef int acpi_io_address ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_UINT16_MAX ;
 scalar_t__ AE_AML_ILLEGAL_ADDRESS ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_gbl_truncate_io_addresses ;
 scalar_t__ acpi_hw_validate_io_request (int ,int) ;
 scalar_t__ acpi_os_write_port (int ,int,int) ;

acpi_status acpi_hw_write_port(acpi_io_address address, u32 value, u32 width)
{
 acpi_status status;
 u32 i;



 if (acpi_gbl_truncate_io_addresses) {
  address &= ACPI_UINT16_MAX;
 }



 status = acpi_hw_validate_io_request(address, width);
 if (ACPI_SUCCESS(status)) {
  status = acpi_os_write_port(address, value, width);
  return status;
 }

 if (status != AE_AML_ILLEGAL_ADDRESS) {
  return status;
 }






 for (i = 0; i < width; i += 8) {



  if (acpi_hw_validate_io_request(address, 8) == AE_OK) {
   status =
       acpi_os_write_port(address, (value >> i) & 0xFF, 8);
   if (ACPI_FAILURE(status)) {
    return status;
   }
  }

  address++;
 }

 return AE_OK;
}
