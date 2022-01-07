
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int AE_INFO ;
 int acpi_tb_load_namespace () ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_load_tables(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_load_tables);



 status = acpi_tb_load_namespace();
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "While loading namespace from ACPI tables"));
 }

 return_ACPI_STATUS(status);
}
