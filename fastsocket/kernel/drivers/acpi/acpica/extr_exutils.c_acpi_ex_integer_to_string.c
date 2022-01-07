
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int acpi_integer ;


 int ACPI_FUNCTION_ENTRY () ;
 size_t acpi_ex_digits_needed (int ,int) ;
 int acpi_ut_short_divide (int ,int,int *,size_t*) ;

void acpi_ex_integer_to_string(char *out_string, acpi_integer value)
{
 u32 count;
 u32 digits_needed;
 u32 remainder;

 ACPI_FUNCTION_ENTRY();

 digits_needed = acpi_ex_digits_needed(value, 10);
 out_string[digits_needed] = 0;

 for (count = digits_needed; count > 0; count--) {
  (void)acpi_ut_short_divide(value, 10, &value, &remainder);
  out_string[count - 1] = (char)('0' + remainder);
 }
}
