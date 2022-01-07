
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_gpe_xrupt_info {scalar_t__ interrupt_number; TYPE_1__* previous; TYPE_2__* next; int * gpe_block_list_head; } ;
typedef int acpi_status ;
typedef int acpi_cpu_flags ;
struct TYPE_6__ {scalar_t__ sci_interrupt; } ;
struct TYPE_5__ {TYPE_1__* previous; } ;
struct TYPE_4__ {TYPE_2__* next; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_gpe_xrupt_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_ev_gpe_xrupt_handler ;
 TYPE_3__ acpi_gbl_FADT ;
 int acpi_gbl_gpe_lock ;
 TYPE_2__* acpi_gbl_gpe_xrupt_list_head ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int acpi_os_remove_interrupt_handler (scalar_t__,int ) ;
 int ev_delete_gpe_xrupt ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ev_delete_gpe_xrupt(struct acpi_gpe_xrupt_info *gpe_xrupt)
{
 acpi_status status;
 acpi_cpu_flags flags;

 ACPI_FUNCTION_TRACE(ev_delete_gpe_xrupt);



 if (gpe_xrupt->interrupt_number == acpi_gbl_FADT.sci_interrupt) {
  gpe_xrupt->gpe_block_list_head = ((void*)0);
  return_ACPI_STATUS(AE_OK);
 }



 status =
     acpi_os_remove_interrupt_handler(gpe_xrupt->interrupt_number,
          acpi_ev_gpe_xrupt_handler);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);
 if (gpe_xrupt->previous) {
  gpe_xrupt->previous->next = gpe_xrupt->next;
 } else {


  acpi_gbl_gpe_xrupt_list_head = gpe_xrupt->next;
 }

 if (gpe_xrupt->next) {
  gpe_xrupt->next->previous = gpe_xrupt->previous;
 }
 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);



 ACPI_FREE(gpe_xrupt);
 return_ACPI_STATUS(AE_OK);
}
