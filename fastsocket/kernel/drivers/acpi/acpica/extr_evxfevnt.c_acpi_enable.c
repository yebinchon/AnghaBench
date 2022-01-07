
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 scalar_t__ ACPI_SYS_MODE_ACPI ;
 int AE_INFO ;
 int AE_NO_ACPI_TABLES ;
 int AE_OK ;
 scalar_t__ acpi_hw_get_mode () ;
 int acpi_hw_set_mode (scalar_t__) ;
 int acpi_tb_tables_loaded () ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_enable(void)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(acpi_enable);



 if (!acpi_tb_tables_loaded()) {
  return_ACPI_STATUS(AE_NO_ACPI_TABLES);
 }



 if (acpi_hw_get_mode() == ACPI_SYS_MODE_ACPI) {
  ACPI_DEBUG_PRINT((ACPI_DB_INIT,
      "System is already in ACPI mode\n"));
 } else {


  status = acpi_hw_set_mode(ACPI_SYS_MODE_ACPI);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO,
        "Could not transition to ACPI mode"));
   return_ACPI_STATUS(status);
  }

  ACPI_DEBUG_PRINT((ACPI_DB_INIT,
      "Transition to ACPI mode successful\n"));
 }

 return_ACPI_STATUS(status);
}
