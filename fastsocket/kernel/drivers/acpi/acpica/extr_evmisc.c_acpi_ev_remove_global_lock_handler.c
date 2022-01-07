
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_EVENT_GLOBAL ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int FALSE ;
 int acpi_ev_global_lock_handler ;
 int acpi_gbl_global_lock_present ;
 int acpi_remove_fixed_event_handler (int ,int ) ;
 int ev_remove_global_lock_handler ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status acpi_ev_remove_global_lock_handler(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_remove_global_lock_handler);

 acpi_gbl_global_lock_present = FALSE;
 status = acpi_remove_fixed_event_handler(ACPI_EVENT_GLOBAL,
       acpi_ev_global_lock_handler);

 return_ACPI_STATUS(status);
}
