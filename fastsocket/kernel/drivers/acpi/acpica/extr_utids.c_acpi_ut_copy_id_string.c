
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_STRCPY (char*,char*) ;

__attribute__((used)) static void acpi_ut_copy_id_string(char *destination, char *source)
{







 if (*source == '*') {
  source++;
 }



 ACPI_STRCPY(destination, source);
}
