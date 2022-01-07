
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
typedef int acpi_io_address ;
typedef int acpi_integer ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FORMAT_NATIVE_UINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_hw_read_port (int ,int*,int) ;
 int acpi_hw_write_port (int ,int,int) ;
 int ex_system_io_space_handler ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_system_io_space_handler(u32 function,
    acpi_physical_address address,
    u32 bit_width,
    acpi_integer * value,
    void *handler_context, void *region_context)
{
 acpi_status status = AE_OK;
 u32 value32;

 ACPI_FUNCTION_TRACE(ex_system_io_space_handler);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "System-IO (width %d) R/W %d Address=%8.8X%8.8X\n",
     bit_width, function,
     ACPI_FORMAT_NATIVE_UINT(address)));



 switch (function) {
 case 129:

  status = acpi_hw_read_port((acpi_io_address) address,
        &value32, bit_width);
  *value = value32;
  break;

 case 128:

  status = acpi_hw_write_port((acpi_io_address) address,
         (u32) * value, bit_width);
  break;

 default:
  status = AE_BAD_PARAMETER;
  break;
 }

 return_ACPI_STATUS(status);
}
