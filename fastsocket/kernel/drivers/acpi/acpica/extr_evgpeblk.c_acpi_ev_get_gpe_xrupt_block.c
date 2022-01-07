
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct acpi_gpe_xrupt_info {scalar_t__ interrupt_number; struct acpi_gpe_xrupt_info* previous; struct acpi_gpe_xrupt_info* next; } ;
typedef int acpi_status ;
typedef int acpi_cpu_flags ;
struct TYPE_2__ {scalar_t__ sci_interrupt; } ;


 struct acpi_gpe_xrupt_info* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int acpi_ev_gpe_xrupt_handler ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_gbl_gpe_lock ;
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_install_interrupt_handler (scalar_t__,int ,struct acpi_gpe_xrupt_info*) ;
 int acpi_os_release_lock (int ,int ) ;
 int ev_get_gpe_xrupt_block ;
 int return_PTR (struct acpi_gpe_xrupt_info*) ;

__attribute__((used)) static struct acpi_gpe_xrupt_info *acpi_ev_get_gpe_xrupt_block(u32
              interrupt_number)
{
 struct acpi_gpe_xrupt_info *next_gpe_xrupt;
 struct acpi_gpe_xrupt_info *gpe_xrupt;
 acpi_status status;
 acpi_cpu_flags flags;

 ACPI_FUNCTION_TRACE(ev_get_gpe_xrupt_block);



 next_gpe_xrupt = acpi_gbl_gpe_xrupt_list_head;
 while (next_gpe_xrupt) {
  if (next_gpe_xrupt->interrupt_number == interrupt_number) {
   return_PTR(next_gpe_xrupt);
  }

  next_gpe_xrupt = next_gpe_xrupt->next;
 }



 gpe_xrupt = ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_gpe_xrupt_info));
 if (!gpe_xrupt) {
  return_PTR(((void*)0));
 }

 gpe_xrupt->interrupt_number = interrupt_number;



 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);
 if (acpi_gbl_gpe_xrupt_list_head) {
  next_gpe_xrupt = acpi_gbl_gpe_xrupt_list_head;
  while (next_gpe_xrupt->next) {
   next_gpe_xrupt = next_gpe_xrupt->next;
  }

  next_gpe_xrupt->next = gpe_xrupt;
  gpe_xrupt->previous = next_gpe_xrupt;
 } else {
  acpi_gbl_gpe_xrupt_list_head = gpe_xrupt;
 }
 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);



 if (interrupt_number != acpi_gbl_FADT.sci_interrupt) {
  status = acpi_os_install_interrupt_handler(interrupt_number,
          acpi_ev_gpe_xrupt_handler,
          gpe_xrupt);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO,
        "Could not install GPE interrupt handler at level 0x%X",
        interrupt_number));
   return_PTR(((void*)0));
  }
 }

 return_PTR(gpe_xrupt);
}
