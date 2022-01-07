
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t status_bit_mask; size_t enable_bit_mask; } ;


 int ACPI_DB_INTERRUPTS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 size_t ACPI_NUM_FIXED_EVENTS ;
 int ACPI_REGISTER_PM1_ENABLE ;
 int ACPI_REGISTER_PM1_STATUS ;
 size_t acpi_ev_fixed_event_dispatch (size_t) ;
 TYPE_1__* acpi_gbl_fixed_event_info ;
 int acpi_hw_register_read (int ,size_t*) ;
 int acpi_os_fixed_event_count (size_t) ;
 int ev_fixed_event_detect ;

u32 acpi_ev_fixed_event_detect(void)
{
 u32 int_status = ACPI_INTERRUPT_NOT_HANDLED;
 u32 fixed_status;
 u32 fixed_enable;
 u32 i;

 ACPI_FUNCTION_NAME(ev_fixed_event_detect);





 (void)acpi_hw_register_read(ACPI_REGISTER_PM1_STATUS, &fixed_status);
 (void)acpi_hw_register_read(ACPI_REGISTER_PM1_ENABLE, &fixed_enable);

 ACPI_DEBUG_PRINT((ACPI_DB_INTERRUPTS,
     "Fixed Event Block: Enable %08X Status %08X\n",
     fixed_enable, fixed_status));




 for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++) {



  if ((fixed_status & acpi_gbl_fixed_event_info[i].
       status_bit_mask)
      && (fixed_enable & acpi_gbl_fixed_event_info[i].
   enable_bit_mask)) {


   acpi_os_fixed_event_count(i);
   int_status |= acpi_ev_fixed_event_dispatch(i);
  }
 }

 return (int_status);
}
