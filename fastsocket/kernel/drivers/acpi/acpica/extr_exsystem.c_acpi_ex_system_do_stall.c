
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_os_stall (int) ;

acpi_status acpi_ex_system_do_stall(u32 how_long)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_ENTRY();

 if (how_long > 255) {






  ACPI_ERROR((AE_INFO, "Time parameter is too large (%d)",
       how_long));
  status = AE_AML_OPERAND_VALUE;
 } else {
  acpi_os_stall(how_long);
 }

 return (status);
}
