
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_EVENT_GLOBAL ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 scalar_t__ AE_NO_HARDWARE_RESPONSE ;
 scalar_t__ AE_OK ;
 int FALSE ;
 int TRUE ;
 int acpi_ev_global_lock_handler ;
 int acpi_gbl_global_lock_present ;
 scalar_t__ acpi_install_fixed_event_handler (int ,int ,int *) ;
 int ev_init_global_lock_handler ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_ev_init_global_lock_handler(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_init_global_lock_handler);



 status = acpi_install_fixed_event_handler(ACPI_EVENT_GLOBAL,
        acpi_ev_global_lock_handler,
        ((void*)0));







 if (status == AE_NO_HARDWARE_RESPONSE) {
  ACPI_ERROR((AE_INFO,
       "No response from Global Lock hardware, disabling lock"));

  acpi_gbl_global_lock_present = FALSE;
  return_ACPI_STATUS(AE_OK);
 }

 acpi_gbl_global_lock_present = TRUE;
 return_ACPI_STATUS(status);
}
