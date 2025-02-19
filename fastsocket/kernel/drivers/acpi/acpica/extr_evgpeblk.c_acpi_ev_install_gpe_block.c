
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_gpe_xrupt_info {struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_block_info {struct acpi_gpe_xrupt_info* xrupt_block; struct acpi_gpe_block_info* previous; struct acpi_gpe_block_info* next; } ;
typedef int acpi_status ;
typedef int acpi_cpu_flags ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_EVENTS ;
 int AE_NO_MEMORY ;
 struct acpi_gpe_xrupt_info* acpi_ev_get_gpe_xrupt_block (int ) ;
 int acpi_gbl_gpe_lock ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_install_gpe_block ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ev_install_gpe_block(struct acpi_gpe_block_info *gpe_block,
     u32 interrupt_number)
{
 struct acpi_gpe_block_info *next_gpe_block;
 struct acpi_gpe_xrupt_info *gpe_xrupt_block;
 acpi_status status;
 acpi_cpu_flags flags;

 ACPI_FUNCTION_TRACE(ev_install_gpe_block);

 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 gpe_xrupt_block = acpi_ev_get_gpe_xrupt_block(interrupt_number);
 if (!gpe_xrupt_block) {
  status = AE_NO_MEMORY;
  goto unlock_and_exit;
 }



 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);
 if (gpe_xrupt_block->gpe_block_list_head) {
  next_gpe_block = gpe_xrupt_block->gpe_block_list_head;
  while (next_gpe_block->next) {
   next_gpe_block = next_gpe_block->next;
  }

  next_gpe_block->next = gpe_block;
  gpe_block->previous = next_gpe_block;
 } else {
  gpe_xrupt_block->gpe_block_list_head = gpe_block;
 }

 gpe_block->xrupt_block = gpe_xrupt_block;
 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);

      unlock_and_exit:
 status = acpi_ut_release_mutex(ACPI_MTX_EVENTS);
 return_ACPI_STATUS(status);
}
