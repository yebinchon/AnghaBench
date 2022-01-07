
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct acpi_pci_id {int function; int device; int bus; int segment; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;
typedef int acpi_integer ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_os_read_pci_configuration (struct acpi_pci_id*,scalar_t__,int*,int) ;
 int acpi_os_write_pci_configuration (struct acpi_pci_id*,scalar_t__,int,int) ;
 int ex_pci_config_space_handler ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_pci_config_space_handler(u32 function,
     acpi_physical_address address,
     u32 bit_width,
     acpi_integer * value,
     void *handler_context, void *region_context)
{
 acpi_status status = AE_OK;
 struct acpi_pci_id *pci_id;
 u16 pci_register;
 u32 value32;

 ACPI_FUNCTION_TRACE(ex_pci_config_space_handler);
 pci_id = (struct acpi_pci_id *)region_context;
 pci_register = (u16) (u32) address;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Pci-Config %d (%d) Seg(%04x) Bus(%04x) Dev(%04x) Func(%04x) Reg(%04x)\n",
     function, bit_width, pci_id->segment, pci_id->bus,
     pci_id->device, pci_id->function, pci_register));

 switch (function) {
 case 129:

  status = acpi_os_read_pci_configuration(pci_id, pci_register,
       &value32, bit_width);
  *value = value32;
  break;

 case 128:

  status = acpi_os_write_pci_configuration(pci_id, pci_register,
        *value, bit_width);
  break;

 default:

  status = AE_BAD_PARAMETER;
  break;
 }

 return_ACPI_STATUS(status);
}
