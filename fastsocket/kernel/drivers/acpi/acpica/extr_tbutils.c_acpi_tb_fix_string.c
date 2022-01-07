
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_size ;


 int ACPI_IS_PRINT (char) ;

__attribute__((used)) static void acpi_tb_fix_string(char *string, acpi_size length)
{

 while (length && *string) {
  if (!ACPI_IS_PRINT(*string)) {
   *string = '?';
  }
  string++;
  length--;
 }
}
