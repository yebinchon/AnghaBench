
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int smi_command; } ;


 int ACPI_BITREG_SCI_ENABLE ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SYS_MODE_ACPI ;
 int ACPI_SYS_MODE_LEGACY ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_read_bit_register (int ,scalar_t__*) ;
 int hw_get_mode ;
 int return_UINT32 (int ) ;

u32 acpi_hw_get_mode(void)
{
 acpi_status status;
 u32 value;

 ACPI_FUNCTION_TRACE(hw_get_mode);





 if (!acpi_gbl_FADT.smi_command) {
  return_UINT32(ACPI_SYS_MODE_ACPI);
 }

 status = acpi_read_bit_register(ACPI_BITREG_SCI_ENABLE, &value);
 if (ACPI_FAILURE(status)) {
  return_UINT32(ACPI_SYS_MODE_LEGACY);
 }

 if (value) {
  return_UINT32(ACPI_SYS_MODE_ACPI);
 } else {
  return_UINT32(ACPI_SYS_MODE_LEGACY);
 }
}
