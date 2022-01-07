
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct acpi_generic_address {scalar_t__ space_id; int bit_width; scalar_t__ bit_offset; int address; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_ERROR (int ) ;
 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 int ACPI_WARNING (int ) ;
 int AE_BAD_ADDRESS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_SUPPORT ;

acpi_status
acpi_hw_validate_register(struct acpi_generic_address *reg,
     u8 max_bit_width, u64 *address)
{



 if (!reg) {
  return (AE_BAD_PARAMETER);
 }






 ACPI_MOVE_64_TO_64(address, &reg->address);
 if (!(*address)) {
  return (AE_BAD_ADDRESS);
 }



 if ((reg->space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
     (reg->space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
  ACPI_ERROR((AE_INFO,
       "Unsupported address space: 0x%X", reg->space_id));
  return (AE_SUPPORT);
 }



 if ((reg->bit_width != 8) &&
     (reg->bit_width != 16) &&
     (reg->bit_width != 32) && (reg->bit_width != max_bit_width)) {
  ACPI_ERROR((AE_INFO,
       "Unsupported register bit width: 0x%X",
       reg->bit_width));
  return (AE_SUPPORT);
 }



 if (reg->bit_offset != 0) {
  ACPI_WARNING((AE_INFO,
         "Unsupported register bit offset: 0x%X",
         reg->bit_offset));
 }

 return (AE_OK);
}
