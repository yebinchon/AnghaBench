
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int acpi_status ;
struct TYPE_3__ {char* name; } ;


 int ACPI_ARRAY_LENGTH (TYPE_1__*) ;
 int ACPI_STRCMP (char*,char*) ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 TYPE_1__* acpi_interfaces_supported ;

acpi_status acpi_osi_invalidate(char *interface)
{
 int i;

 for (i = 0; i < ACPI_ARRAY_LENGTH(acpi_interfaces_supported); i++) {
  if (!ACPI_STRCMP(interface, acpi_interfaces_supported[i].name)) {
   *acpi_interfaces_supported[i].name = '\0';
   return AE_OK;
  }
 }
 return AE_NOT_FOUND;
}
