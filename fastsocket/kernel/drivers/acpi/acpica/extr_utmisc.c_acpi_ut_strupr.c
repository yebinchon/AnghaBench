
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_TOUPPER (char) ;

void acpi_ut_strupr(char *src_string)
{
 char *string;

 ACPI_FUNCTION_ENTRY();

 if (!src_string) {
  return;
 }



 for (string = src_string; *string; string++) {
  *string = (char)ACPI_TOUPPER(*string);
 }

 return;
}
