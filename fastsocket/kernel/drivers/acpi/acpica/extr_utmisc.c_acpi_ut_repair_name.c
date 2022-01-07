
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_name ;


 int ACPI_NAME_SIZE ;
 int acpi_ut_valid_acpi_char (char,int) ;

acpi_name acpi_ut_repair_name(char *name)
{
       u32 i;
 char new_name[ACPI_NAME_SIZE];

 for (i = 0; i < ACPI_NAME_SIZE; i++) {
  new_name[i] = name[i];






  if (!acpi_ut_valid_acpi_char(name[i], i)) {
   new_name[i] = '*';
  }
 }

 return (*(u32 *) new_name);
}
