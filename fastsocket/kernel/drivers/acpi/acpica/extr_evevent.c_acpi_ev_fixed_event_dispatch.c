
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t (* handler ) (int ) ;int context; } ;
struct TYPE_3__ {int enable_register_id; int status_register_id; } ;


 int ACPI_CLEAR_STATUS ;
 int ACPI_DISABLE_EVENT ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 int AE_INFO ;
 TYPE_2__* acpi_gbl_fixed_event_handlers ;
 TYPE_1__* acpi_gbl_fixed_event_info ;
 int acpi_write_bit_register (int ,int ) ;
 size_t stub1 (int ) ;

__attribute__((used)) static u32 acpi_ev_fixed_event_dispatch(u32 event)
{

 ACPI_FUNCTION_ENTRY();



 (void)acpi_write_bit_register(acpi_gbl_fixed_event_info[event].
          status_register_id, ACPI_CLEAR_STATUS);





 if (((void*)0) == acpi_gbl_fixed_event_handlers[event].handler) {
  (void)acpi_write_bit_register(acpi_gbl_fixed_event_info[event].
           enable_register_id,
           ACPI_DISABLE_EVENT);

  ACPI_ERROR((AE_INFO,
       "No installed handler for fixed event [%08X]",
       event));

  return (ACPI_INTERRUPT_NOT_HANDLED);
 }



 return ((acpi_gbl_fixed_event_handlers[event].
   handler) (acpi_gbl_fixed_event_handlers[event].context));
}
