
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_integer ;


 char* acpi_gbl_hex_to_ascii ;

char acpi_ut_hex_to_ascii_char(acpi_integer integer, u32 position)
{

 return (acpi_gbl_hex_to_ascii[(integer >> position) & 0xF]);
}
