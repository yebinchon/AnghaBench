
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_parse_state {int* aml; } ;
typedef scalar_t__ acpi_size ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ps_get_next_package_length ;
 int return_UINT32 (int) ;

__attribute__((used)) static u32
acpi_ps_get_next_package_length(struct acpi_parse_state *parser_state)
{
 u8 *aml = parser_state->aml;
 u32 package_length = 0;
 u32 byte_count;
 u8 byte_zero_mask = 0x3F;

 ACPI_FUNCTION_TRACE(ps_get_next_package_length);





 byte_count = (aml[0] >> 6);
 parser_state->aml += ((acpi_size) byte_count + 1);



 while (byte_count) {







  package_length |= (aml[byte_count] << ((byte_count << 3) - 4));

  byte_zero_mask = 0x0F;
  byte_count--;
 }



 package_length |= (aml[0] & byte_zero_mask);
 return_UINT32(package_length);
}
