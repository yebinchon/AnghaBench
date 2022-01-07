
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
typedef int * acpi_event_handler ;
struct TYPE_2__ {int * context; int * handler; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 size_t ACPI_EVENT_MAX ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (size_t,int *,void*)) ;
 int ACPI_MTX_EVENTS ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARNING (int ) ;
 int AE_ALREADY_EXISTS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int acpi_clear_event (size_t) ;
 int acpi_enable_event (size_t,int ) ;
 TYPE_1__* acpi_gbl_fixed_event_handlers ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_install_fixed_event_handler(u32 event,
     acpi_event_handler handler, void *context)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_install_fixed_event_handler);



 if (event > ACPI_EVENT_MAX) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if (((void*)0) != acpi_gbl_fixed_event_handlers[event].handler) {
  status = AE_ALREADY_EXISTS;
  goto cleanup;
 }



 acpi_gbl_fixed_event_handlers[event].handler = handler;
 acpi_gbl_fixed_event_handlers[event].context = context;

 status = acpi_clear_event(event);
 if (ACPI_SUCCESS(status))
  status = acpi_enable_event(event, 0);
 if (ACPI_FAILURE(status)) {
  ACPI_WARNING((AE_INFO, "Could not enable fixed event %X",
         event));



  acpi_gbl_fixed_event_handlers[event].handler = ((void*)0);
  acpi_gbl_fixed_event_handlers[event].context = ((void*)0);
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Enabled fixed event %X, Handler=%p\n", event,
      handler));
 }

      cleanup:
 (void)acpi_ut_release_mutex(ACPI_MTX_EVENTS);
 return_ACPI_STATUS(status);
}
