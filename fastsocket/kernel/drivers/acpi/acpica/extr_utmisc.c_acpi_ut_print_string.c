
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
typedef int s32 ;


 int ACPI_IS_PRINT (char) ;
 int acpi_os_printf (char*,...) ;

void acpi_ut_print_string(char *string, u8 max_length)
{
 u32 i;

 if (!string) {
  acpi_os_printf("<\"NULL STRING PTR\">");
  return;
 }

 acpi_os_printf("\"");
 for (i = 0; string[i] && (i < max_length); i++) {



  switch (string[i]) {
  case 0x07:
   acpi_os_printf("\\a");
   break;

  case 0x08:
   acpi_os_printf("\\b");
   break;

  case 0x0C:
   acpi_os_printf("\\f");
   break;

  case 0x0A:
   acpi_os_printf("\\n");
   break;

  case 0x0D:
   acpi_os_printf("\\r");
   break;

  case 0x09:
   acpi_os_printf("\\t");
   break;

  case 0x0B:
   acpi_os_printf("\\v");
   break;

  case '\'':
  case '\"':
  case '\\':
   acpi_os_printf("\\%c", (int)string[i]);
   break;

  default:



   if (ACPI_IS_PRINT(string[i])) {


    acpi_os_printf("%c", (int)string[i]);
   } else {


    acpi_os_printf("\\x%2.2X", (s32) string[i]);
   }
   break;
  }
 }
 acpi_os_printf("\"");

 if (i == max_length && string[i]) {
  acpi_os_printf("...");
 }
}
