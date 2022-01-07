
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_FIXED_EVENTS ;
 scalar_t__ ACPI_SYS_MODE_LEGACY ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int acpi_disable () ;
 int acpi_disable_event (scalar_t__,int ) ;
 int acpi_ev_delete_gpe_handlers ;
 int acpi_ev_remove_global_lock_handler () ;
 int acpi_ev_remove_sci_handler () ;
 int acpi_ev_walk_gpe_list (int ,int *) ;
 scalar_t__ acpi_gbl_events_initialized ;
 scalar_t__ acpi_gbl_original_mode ;
 int acpi_hw_disable_gpe_block ;
 int ev_terminate ;
 int return_VOID ;

void acpi_ev_terminate(void)
{
 u32 i;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_terminate);

 if (acpi_gbl_events_initialized) {







  for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++) {
   status = acpi_disable_event(i, 0);
   if (ACPI_FAILURE(status)) {
    ACPI_ERROR((AE_INFO,
         "Could not disable fixed event %d",
         (u32) i));
   }
  }



  status = acpi_ev_walk_gpe_list(acpi_hw_disable_gpe_block, ((void*)0));



  status = acpi_ev_remove_sci_handler();
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO, "Could not remove SCI handler"));
  }

  status = acpi_ev_remove_global_lock_handler();
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO,
        "Could not remove Global Lock handler"));
  }
 }



 status = acpi_ev_walk_gpe_list(acpi_ev_delete_gpe_handlers, ((void*)0));



 if (acpi_gbl_original_mode == ACPI_SYS_MODE_LEGACY) {
  status = acpi_disable();
  if (ACPI_FAILURE(status)) {
   ACPI_WARNING((AE_INFO, "AcpiDisable failed"));
  }
 }
 return_VOID;
}
