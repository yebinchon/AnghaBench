
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int acpi_gbl_integer_bit_width ;
 int acpi_gbl_integer_byte_width ;
 int acpi_gbl_integer_nybble_width ;

void acpi_ut_set_integer_width(u8 revision)
{

 if (revision < 2) {



  acpi_gbl_integer_bit_width = 32;
  acpi_gbl_integer_nybble_width = 8;
  acpi_gbl_integer_byte_width = 4;
 } else {


  acpi_gbl_integer_bit_width = 64;
  acpi_gbl_integer_nybble_width = 16;
  acpi_gbl_integer_byte_width = 8;
 }
}
