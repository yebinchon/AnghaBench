
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int TRUE ;
 int acpi_ev_init_global_lock_handler () ;
 int acpi_ev_install_sci_handler () ;
 int acpi_gbl_events_initialized ;
 int ev_install_xrupt_handlers ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_install_xrupt_handlers(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_install_xrupt_handlers);



 status = acpi_ev_install_sci_handler();
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Unable to install System Control Interrupt handler"));
  return_ACPI_STATUS(status);
 }



 status = acpi_ev_init_global_lock_handler();
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Unable to initialize Global Lock handler"));
  return_ACPI_STATUS(status);
 }

 acpi_gbl_events_initialized = TRUE;
 return_ACPI_STATUS(status);
}
