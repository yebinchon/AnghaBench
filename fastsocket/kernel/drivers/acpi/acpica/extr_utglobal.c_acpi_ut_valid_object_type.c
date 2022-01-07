
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ acpi_object_type ;


 scalar_t__ ACPI_TYPE_LOCAL_MAX ;
 int FALSE ;
 int TRUE ;

u8 acpi_ut_valid_object_type(acpi_object_type type)
{

 if (type > ACPI_TYPE_LOCAL_MAX) {



  return (FALSE);
 }

 return (TRUE);
}
