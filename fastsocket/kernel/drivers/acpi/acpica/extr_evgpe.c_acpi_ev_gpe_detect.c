
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct acpi_gpe_xrupt_info {struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_register_info {scalar_t__ base_gpe_number; int enable_address; int status_address; } ;
struct acpi_gpe_block_info {size_t register_count; struct acpi_gpe_block_info* next; int * event_info; struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;
typedef size_t acpi_size ;
typedef int acpi_cpu_flags ;


 int ACPI_DB_INTERRUPTS ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_GPE_REGISTER_WIDTH ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 size_t acpi_ev_gpe_dispatch (int *,scalar_t__) ;
 int acpi_gbl_gpe_lock ;
 int acpi_hw_read (size_t*,int *) ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int ev_gpe_detect ;

u32 acpi_ev_gpe_detect(struct acpi_gpe_xrupt_info * gpe_xrupt_list)
{
 acpi_status status;
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_register_info *gpe_register_info;
 u32 int_status = ACPI_INTERRUPT_NOT_HANDLED;
 u8 enabled_status_byte;
 u32 status_reg;
 u32 enable_reg;
 acpi_cpu_flags flags;
 u32 i;
 u32 j;

 ACPI_FUNCTION_NAME(ev_gpe_detect);



 if (!gpe_xrupt_list) {
  return (int_status);
 }






 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);



 gpe_block = gpe_xrupt_list->gpe_block_list_head;
 while (gpe_block) {




  for (i = 0; i < gpe_block->register_count; i++) {



   gpe_register_info = &gpe_block->register_info[i];



   status =
       acpi_hw_read(&status_reg,
      &gpe_register_info->status_address);
   if (ACPI_FAILURE(status)) {
    goto unlock_and_exit;
   }



   status =
       acpi_hw_read(&enable_reg,
      &gpe_register_info->enable_address);
   if (ACPI_FAILURE(status)) {
    goto unlock_and_exit;
   }

   ACPI_DEBUG_PRINT((ACPI_DB_INTERRUPTS,
       "Read GPE Register at GPE%X: Status=%02X, Enable=%02X\n",
       gpe_register_info->base_gpe_number,
       status_reg, enable_reg));



   enabled_status_byte = (u8) (status_reg & enable_reg);
   if (!enabled_status_byte) {



    continue;
   }



   for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++) {



    if (enabled_status_byte & (1 << j)) {




     int_status |=
         acpi_ev_gpe_dispatch(&gpe_block->
      event_info[((acpi_size) i * ACPI_GPE_REGISTER_WIDTH) + j], j + gpe_register_info->base_gpe_number);
    }
   }
  }

  gpe_block = gpe_block->next;
 }

      unlock_and_exit:

 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);
 return (int_status);
}
